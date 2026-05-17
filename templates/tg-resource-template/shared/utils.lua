-- Shared utility namespace.
--
-- Rename this namespace when creating a new resource.
-- Shared utilities should remain framework-agnostic and reusable.

TGResourceTemplateUtils = TGResourceTemplateUtils or {}

-- Returns true when debug mode is enabled.
function TGResourceTemplateUtils.isDebugEnabled()
	return Config.Debug == true
end

-- Formats a consistent resource log message.
function TGResourceTemplateUtils.formatLogMessage(message)
	return ('[%s] %s'):format(
		Config.ResourceName,
		tostring(message)
	)
end
