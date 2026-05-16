-- Door static data.
--
-- This file is intended for door definitions and desired default states.
--
-- A door entry should describe:
-- - where the door is located
-- - what object model it uses
-- - which door system identifier should be used
-- - whether it should start unlocked, locked, open, or closed
--
-- Important:
-- Add entries gradually only after in-game verification.

TGDoorData = TGDoorData or {}

-- Door state reference:
--
-- 0 = unlocked
-- 1 = locked
-- 2 = force locked until out of area
-- 3 = force unlocked this frame
-- 4 = force locked this frame
-- 5 = force open this frame
-- 6 = force closed this frame
--
-- For the first production entries we should usually use:
-- - 0 for doors that should be openable
-- - 1 for doors that should stay locked
TGDoorData.States = {
    unlocked = 0,
    locked = 1,
    forceLockedUntilOutOfArea = 2,
    forceUnlockedThisFrame = 3,
    forceLockedThisFrame = 4,
    forceOpenThisFrame = 5,
    forceClosedThisFrame = 6
}

-- Door entries are intentionally empty for the initial skeleton.
--
-- Future example:
--
-- TGDoorData.Doors = {
--     {
--         -- Human-readable name for documentation and logs.
--         name = 'Example door',
--
--         -- Unique door system identifier.
--         -- This may be a numeric hash or a string that will be converted with GetHashKey.
--         doorHash = 'TG_EXAMPLE_DOOR_01',
--
--         -- Door object model.
--         -- This may be a numeric hash or a string that will be converted with GetHashKey.
--         modelHash = 'example_door_model',
--
--         -- Door object coordinates.
--         coords = vector3(0.0, 0.0, 0.0),
--
--         -- Default door state.
--         -- Use TGDoorData.States.unlocked for doors that should be openable.
--         state = TGDoorData.States.unlocked,
--
--         -- If true, the resource will wait for door physics before setting state.
--         waitForPhysics = true,
--
--         -- Optional note explaining why this door is managed.
--         notes = 'Example placeholder.'
--     }
-- }
TGDoorData.Doors = {}
