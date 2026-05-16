-- IMAP static data.
--
-- IMAPs are map/world chunks that can be requested or removed.
-- They are commonly used to control world state variants, such as:
-- - completed or damaged buildings
-- - boarded or unboarded windows
-- - construction stages
-- - props around towns/camps
-- - terrain patches
-- - interior or exterior world pieces
--
-- Important:
-- Requesting/removing the wrong IMAP combination can create visual conflicts.
-- Add entries slowly and test every location.

TGStaticData = TGStaticData or {}

-- IMAPs that should be requested/enabled.
--
-- Future example:
--
-- TGStaticData.RequestImaps = {
--     {
--         -- Human-readable name for documentation and logs.
--         name = 'Example requested IMAP',
--
--         -- IMAP hash/id to request.
--         imap = 123456789,
--
--         -- Optional notes about what this IMAP changes.
--         notes = 'Short explanation of what this enables.'
--     }
-- }
TGStaticData.RequestImaps = {}

-- IMAPs that should be removed/disabled.
--
-- Future example:
--
-- TGStaticData.RemoveImaps = {
--     {
--         -- Human-readable name for documentation and logs.
--         name = 'Example removed IMAP',
--
--         -- IMAP hash/id to remove.
--         imap = -123456789,
--
--         -- Optional notes about what this IMAP removes.
--         notes = 'Short explanation of what this removes.'
--     }
-- }
TGStaticData.RemoveImaps = {}
