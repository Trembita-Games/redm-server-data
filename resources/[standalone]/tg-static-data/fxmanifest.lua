-- Resource manifest for tg-static-data.
--
-- fxmanifest.lua is required by FXServer/RedM.
-- It tells the server what game this resource targets and which scripts to load.

fx_version 'cerulean'
game 'rdr3'

-- Required warning for RedM resources.
-- This is a standard RedM manifest line.
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

author 'Trembita Games'
description 'Standalone static world data resource for Trembita Games RedM/RDR2 servers'
version '0.1.0'

-- Enables Lua 5.4 runtime for this resource.
lua54 'yes'

-- Shared scripts are loaded before client/server scripts.
-- We keep configuration and static data here so client/main.lua can use them.
shared_scripts {
    'config.lua',
    'data/*.lua'
}

-- Client script runs on each connected player's RedM client.
-- Static world/interior/IMAP operations are client-side in this resource.
client_scripts {
    'client/*.lua'
}
