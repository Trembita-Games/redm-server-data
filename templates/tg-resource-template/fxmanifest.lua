-- Resource manifest for tg-resource-template.
--
-- fxmanifest.lua is required by FXServer/RedM.
-- It tells the server what game this resource targets and which scripts to load.

fx_version 'cerulean'
game 'rdr3'

-- Required warning for RedM resources.
-- This is a standard RedM manifest line.
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

author 'Trembita Games'
description 'Canonical standalone resource template for Trembita Games RedM repositories'
version '0.1.0'

-- Enables Lua 5.4 runtime for this resource.
lua54 'yes'

-- Shared scripts are loaded before client/server scripts.
-- Keep configuration, shared utilities and static data definitions here.
shared_scripts {
	'config.lua',
	'shared/*.lua',
	'data/*.lua'
}

-- Client scripts run on each connected player's RedM client.
-- Keep client-specific runtime logic inside client/.
client_scripts {
	'client/*.lua'
}

-- Server scripts run on the FXServer runtime.
-- Keep server-specific runtime logic inside server/.
server_scripts {
	'server/*.lua'
}
