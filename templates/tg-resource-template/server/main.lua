-- Server runtime for tg-resource-template.
--
-- This file demonstrates the recommended server runtime structure.
--
-- Keep this file focused on runtime logic.
-- Static configuration and resource data should stay in:
-- - config.lua
-- - data/*.lua

local resourceName = GetCurrentResourceName()

-- Prints a log message only when debug mode is enabled.
-- This keeps startup visible during development but easy to silence later.
local function log(message)
	if not Config.Debug then
		return
	end

	print(('[%s] %s'):format(resourceName, tostring(message)))
end

-- Initializes the server runtime.
CreateThread(function()
	log('Server runtime initialized.')
end)

-- Example command registration.
-- Replace or remove this command when creating a real resource.
RegisterCommand('tgresource', function(source)
	log(('Example command executed by source: %s'):format(
		tostring(source)
	))
end, false)
