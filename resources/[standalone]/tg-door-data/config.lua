-- Runtime configuration for tg-door-data.
--
-- Keep this file small and readable.
-- Door definitions themselves should live in data/doors.lua.

Config = {}

-- Enables diagnostic log messages in the client console.
-- Set to false after the resource becomes stable and noisy logs are no longer needed.
Config.Debug = true

-- Resource name used only for readability and documentation.
-- The actual runtime resource name is still taken from GetCurrentResourceName().
Config.ResourceName = 'tg-door-data'

-- Enables door registration through AddDoorToSystem.
Config.EnableDoorRegistration = true

-- Enables applying door lock/open states through DoorSystemSetDoorState.
Config.EnableDoorStates = true

-- Enables debug commands for collecting door object data in-game.
--
-- Keep this enabled while investigating blocked doors.
-- Disable it later if the commands are no longer needed on a public server.
Config.EnableDebugCommands = true

-- Shows short chat messages after debug command execution.
--
-- The full generated door entry is still printed to the F8 client console,
-- because it is too long for normal chat output.
Config.EnableDebugChatMessages = true

-- Ray distance for the /tgdoor debug command.
--
-- The command casts a ray from the gameplay camera forward.
-- Increase this value if the command does not hit the door from a normal standing distance.
Config.DebugRayDistance = 8.0

-- Delay before applying door data after the client script starts.
--
-- This gives RedM a short moment to initialize the client world state.
-- If some doors later appear unreliable on first spawn, this value can be increased.
Config.StartupDelayMs = 1000

-- Maximum time to wait for door physics before applying a state.
--
-- DoorSystem states may not apply correctly before physics is loaded.
-- Keeping a timeout prevents the script from waiting forever on bad door data.
Config.PhysicsTimeoutMs = 5000

-- How often to check whether door physics is loaded.
Config.PhysicsCheckIntervalMs = 100

-- Skeleton mode means the resource is installed and working,
-- but it does not include verified production door entries yet.
Config.SkeletonMode = true
