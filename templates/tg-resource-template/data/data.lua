-- Static resource data.
--
-- This file is intended for immutable runtime data definitions.
--
-- Examples:
-- - static world configuration
-- - predefined locations
-- - interaction definitions
-- - runtime constants
-- - state mappings
--
-- Important:
-- Keep runtime logic outside data files.
-- Data files should only describe static resource data.

TGResourceTemplateData = TGResourceTemplateData or {}

-- Example static state reference.
--
-- Replace or extend this structure depending on resource requirements.
TGResourceTemplateData.States = {
	enabled = 'enabled',
	disabled = 'disabled'
}

-- Example static entries.
--
-- Future example:
--
-- TGResourceTemplateData.Entries = {
--     {
--         -- Human-readable entry name.
--         name = 'Example entry',
--
--         -- Example enabled state.
--         state = TGResourceTemplateData.States.enabled,
--
--         -- Optional developer note.
--         notes = 'Example placeholder.'
--     }
-- }
TGResourceTemplateData.Entries = {}
