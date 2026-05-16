-- Client runtime for tg-static-data.
--
-- This file applies static data defined in:
-- - data/interiors.lua
-- - data/imaps.lua
--
-- Keep this file focused on runtime logic.
-- Static data itself should stay in data/*.lua files.

local resourceName = GetCurrentResourceName()

-- Prints a log message only when debug mode is enabled.
-- This keeps startup visible during development but easy to silence later.
local function log(message)
    if Config.Debug then
        print(('[%s] %s'):format(resourceName, message))
    end
end

-- Activates all configured entity sets for one interior entry.
--
-- Expected entry shape:
-- {
--     name = 'Valentine bank',
--     interiorId = 12290,
--     entitySets = {
--         'val_bank_front_windows'
--     }
-- }
local function activateInterior(entry)
    if not entry or not entry.interiorId or not entry.entitySets then
        log('Skipping invalid interior entry.')
        return false
    end

    local interiorName = entry.name or 'unknown'

    -- IsValidInterior prevents native calls against invalid/intermediate data.
    if not IsValidInterior(entry.interiorId) then
        log(('Invalid interior: %s (%s)'):format(interiorName, entry.interiorId))
        return false
    end

    for _, entitySet in ipairs(entry.entitySets) do
        if type(entitySet) ~= 'string' then
            log(('Skipping invalid entity set for interior "%s".'):format(interiorName))
        elseif not IsInteriorEntitySetActive(entry.interiorId, entitySet) then
            -- Avoid activating the same entity set repeatedly when it is already active.
            ActivateInteriorEntitySet(entry.interiorId, entitySet, 0)
        end
    end

    return true
end

-- Applies all configured interior entries.
local function applyInteriors()
    if not Config.EnableInteriors then
        log('Interior activation is disabled.')
        return
    end

    local appliedCount = 0

    for _, entry in ipairs(TGStaticData.Interiors or {}) do
        if activateInterior(entry) then
            appliedCount = appliedCount + 1
        end
    end

    log(('Applied interior entries: %d.'):format(appliedCount))
end

-- Applies all configured IMAP removals and requests.
--
-- Order matters:
-- 1. Remove conflicting/unwanted IMAPs.
-- 2. Request desired IMAPs.
--
-- This makes future world-state corrections easier to reason about.
local function applyImaps()
    if not Config.EnableImaps then
        log('IMAP operations are disabled.')
        return
    end

    local removedCount = 0
    local requestedCount = 0

    for _, entry in ipairs(TGStaticData.RemoveImaps or {}) do
        if entry and entry.imap then
            RemoveImap(entry.imap)
            removedCount = removedCount + 1
        else
            log('Skipping invalid remove IMAP entry.')
        end
    end

    for _, entry in ipairs(TGStaticData.RequestImaps or {}) do
        if entry and entry.imap then
            RequestImap(entry.imap)
            requestedCount = requestedCount + 1
        else
            log('Skipping invalid request IMAP entry.')
        end
    end

    log(('Removed IMAP entries: %d.'):format(removedCount))
    log(('Requested IMAP entries: %d.'):format(requestedCount))
end

-- Main initialization thread.
--
-- Runs once on the client after a short startup delay.
-- Later, if needed, this can be extended to re-apply data after spawn/reconnect events.
CreateThread(function()
    Wait(Config.StartupDelayMs)

    log('Starting static data initialization.')

    if Config.SkeletonMode then
        log('Skeleton mode is enabled. No production static world fixes are included yet.')
    end

    applyInteriors()
    applyImaps()

    log('Static data initialization completed.')
end)
