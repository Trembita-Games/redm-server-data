-- Runtime configuration for tg-static-data.
--
-- Keep this file small and readable.
-- Data itself should live in data/interiors.lua and data/imaps.lua.

Config = {}

-- Enables diagnostic log messages in the client console.
-- Set to false after the resource becomes stable and noisy logs are no longer needed.
Config.Debug = true

-- Resource name used only for readability and documentation.
-- The actual runtime resource name is still taken from GetCurrentResourceName().
Config.ResourceName = 'tg-static-data'

-- Enables activation of interior entity sets from TGStaticData.Interiors.
Config.EnableInteriors = true

-- Enables RequestImap/RemoveImap operations from TGStaticData.RequestImaps and TGStaticData.RemoveImaps.
Config.EnableImaps = true

-- Delay before applying static data after the client script starts.
--
-- This gives RedM a short moment to initialize the client world state.
-- If some entries later appear unreliable on first spawn, this value can be increased.
Config.StartupDelayMs = 1000

-- Skeleton mode means the resource is installed and working,
-- but it does not include production static world fixes yet.
Config.SkeletonMode = true
