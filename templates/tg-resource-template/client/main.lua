-- Client runtime for tg-resource-template.
--
-- This file demonstrates the recommended client runtime structure.
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

-- Shows a small in-game chat message during development.
-- This helper is optional and mainly useful while testing resources.
local function notify(message)
	if not Config.EnableDebugChatMessages then
		return
	end

	TriggerEvent('chat:addMessage', {
		args = {
			resourceName,
			tostring(message)
		}
	})
end

-- Initializes the client runtime.
CreateThread(function()
	log('Client runtime initialized.')

	notify('Client runtime initialized.')
end)
