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

    applyDoors()

    log('Door data initialization completed.')
end)
