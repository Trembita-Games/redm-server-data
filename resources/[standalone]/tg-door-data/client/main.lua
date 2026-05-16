-- Client runtime for tg-door-data.
--
-- This file applies door data defined in:
-- - data/doors.lua
--
-- Keep this file focused on runtime logic.
-- Door data itself should stay in data/doors.lua.

local resourceName = GetCurrentResourceName()

-- Prints a log message only when debug mode is enabled.
-- This keeps startup visible during development but easy to silence later.
local function log(message)
    if Config.Debug then
        print(('[%s] %s'):format(resourceName, message))
    end
end

-- Shows a short in-game chat message.
--
-- The generated door template is still printed to the F8 client console.
-- Chat is used only as a small confirmation for easier testing.
local function notify(message)
    if not Config.EnableDebugChatMessages then
        return
    end

    TriggerEvent('chat:addMessage', {
        args = {
            'tg-door-data',
            message
        }
    })
end

-- Converts either a numeric hash or a string name into a hash value.
--
-- Numeric values are returned as-is.
-- String values are converted through GetHashKey.
local function resolveHash(value)
    if type(value) == 'string' then
        return GetHashKey(value)
    end

    return value
end

-- Counts entries in array-like tables.
local function countEntries(entries)
    if not entries then
        return 0
    end

    return #entries
end

-- Validates that a door entry has the minimum required fields.
local function isValidDoorEntry(entry)
    return entry
        and entry.doorHash
        and entry.modelHash
        and entry.coords
        and entry.state ~= nil
end

-- Registers one door in the door system.
--
-- AddDoorToSystem needs:
-- - unique door hash
-- - model hash
-- - door coordinates
-- - a few flags controlling script/network behavior
local function registerDoor(entry)
    local doorHash = resolveHash(entry.doorHash)
    local modelHash = resolveHash(entry.modelHash)

    AddDoorToSystem(
        doorHash,
        modelHash,
        entry.coords.x,
        entry.coords.y,
        entry.coords.z,
        false,
        false,
        false
    )

    log(('Registered door "%s".'):format(entry.name or tostring(entry.doorHash)))

    return doorHash
end

-- Waits until door physics is loaded or timeout is reached.
--
-- Door state changes may not apply correctly before physics is loaded.
local function waitForDoorPhysics(doorHash)
    local timeoutAt = GetGameTimer() + Config.PhysicsTimeoutMs

    while not DoorSystemGetIsPhysicsLoaded(doorHash) do
        if GetGameTimer() >= timeoutAt then
            return false
        end

        Wait(Config.PhysicsCheckIntervalMs)
    end

    return true
end

-- Applies desired state to one door entry.
local function applyDoorState(entry, doorHash)
    if entry.waitForPhysics ~= false then
        local physicsLoaded = waitForDoorPhysics(doorHash)

        if not physicsLoaded then
            log(('Door physics timeout for "%s". State will still be applied.'):format(entry.name or tostring(entry.doorHash)))
        end
    end

    DoorSystemSetDoorState(doorHash, entry.state, true, true)

    log(('Applied state %s to door "%s".'):format(entry.state, entry.name or tostring(entry.doorHash)))
end

-- Applies all configured doors.
local function applyDoors()
    local doors = TGDoorData.Doors or {}

    log(('Configured door entries: %d.'):format(countEntries(doors)))

    if not Config.EnableDoorRegistration and not Config.EnableDoorStates then
        log('Door registration and door state application are disabled.')
        return
    end

    for _, entry in ipairs(doors) do
        if not isValidDoorEntry(entry) then
            log('Skipping invalid door entry.')
        else
            local doorHash = resolveHash(entry.doorHash)

            if Config.EnableDoorRegistration then
                doorHash = registerDoor(entry)
            end

            if Config.EnableDoorStates then
                applyDoorState(entry, doorHash)
            end
        end
    end
end

-- Converts camera rotation to a forward direction vector.
--
-- This is used by /tgdoor to cast a ray from the camera toward the object
-- the player is looking at.
local function rotationToDirection(rotation)
    local adjustedRotation = {
        x = math.rad(rotation.x),
        y = math.rad(rotation.y),
        z = math.rad(rotation.z)
    }

    local cosX = math.cos(adjustedRotation.x)

    return vector3(
        -math.sin(adjustedRotation.z) * cosX,
        math.cos(adjustedRotation.z) * cosX,
        math.sin(adjustedRotation.x)
    )
end

-- Returns the entity currently targeted by the gameplay camera ray.
--
-- This helps collect object model and coordinate data for blocked doors.
local function getEntityFromCameraRay()
    local cameraCoords = GetGameplayCamCoord()
    local cameraRotation = GetGameplayCamRot(2)
    local direction = rotationToDirection(cameraRotation)

    local targetCoords = vector3(
        cameraCoords.x + direction.x * Config.DebugRayDistance,
        cameraCoords.y + direction.y * Config.DebugRayDistance,
        cameraCoords.z + direction.z * Config.DebugRayDistance
    )

    local rayHandle = StartShapeTestRay(
        cameraCoords.x,
        cameraCoords.y,
        cameraCoords.z,
        targetCoords.x,
        targetCoords.y,
        targetCoords.z,
        -1,
        PlayerPedId(),
        0
    )

    local _, hit, hitCoords, _, entity = GetShapeTestResult(rayHandle)

    return hit == 1, entity, hitCoords
end

-- Prints a ready-to-copy door entry template for data/doors.lua.
local function printDoorEntryTemplate(entity, hitCoords)
    local entityCoords = GetEntityCoords(entity)
    local modelHash = GetEntityModel(entity)
    local heading = GetEntityHeading(entity)
    local entityType = GetEntityType(entity)

    local coords = entityCoords or hitCoords

    print('')
    print(('[%s] Door debug result:'):format(resourceName))
    print(('Entity: %s'):format(entity))
    print(('Entity type: %s'):format(entityType))
    print(('Model hash: %s'):format(modelHash))
    print(('Coordinates: %.4f, %.4f, %.4f'):format(coords.x, coords.y, coords.z))
    print(('Heading: %.4f'):format(heading))
    print('')
    print('Copy this entry into data/doors.lua and replace TODO values:')
    print('')
    print('{')
    print('    name = \'TODO door name\',')
    print('    doorHash = \'TG_TODO_DOOR_01\',')
    print(('    modelHash = %s,'):format(modelHash))
    print(('    coords = vector3(%.4f, %.4f, %.4f),'):format(coords.x, coords.y, coords.z))
    print('    state = TGDoorData.States.unlocked,')
    print('    waitForPhysics = true,')
    print(('    notes = \'Captured with /tgdoor. Heading: %.4f.\''):format(heading))
    print('}')
    print('')
end

-- Registers debug command for collecting door object data.
--
-- Usage:
-- 1. Stand near a blocked door.
-- 2. Aim the camera at the door.
-- 3. Run /tgdoor in the client console or chat command input.
-- 4. Copy the printed entry into data/doors.lua.
local function registerDebugCommands()
    if not Config.EnableDebugCommands then
        return
    end

    RegisterCommand('tgdoor', function()
        local hit, entity, hitCoords = getEntityFromCameraRay()

        if not hit or not entity or entity == 0 then
            log('No entity found. Move closer to the door and aim directly at it.')
            notify('No entity found. Move closer and aim directly at the door.')
            return
        end

        printDoorEntryTemplate(entity, hitCoords)
        notify('Door data captured. Check F8 console for the generated entry.')
    end, false)

    log('Debug command registered: /tgdoor')
end

-- Main initialization thread.
--
-- Runs once on the client after a short startup delay.
-- Later, if needed, this can be extended to re-apply door data after spawn/reconnect events.
CreateThread(function()
    Wait(Config.StartupDelayMs)

    log('Starting door data initialization.')

    if Config.SkeletonMode then
        log('Skeleton mode is enabled. No production door entries are included yet.')
    end

    registerDebugCommands()
    applyDoors()

    log('Door data initialization completed.')
end)
