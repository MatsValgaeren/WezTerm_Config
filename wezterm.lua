local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- General
config.font_size = 12
config.line_height = 1.2
config.font = wezterm.font('JetBrains Mono', { weight = 'Bold', italic = false })
config.color_scheme = 'DotGov'

-- Skip closing confirmation
wezterm.on('mux-is-process-stateful', function(_proc)
return false
end)

-- Key bindings
config.keys = {
    {
        key = 'd',
        mods = 'CTRL',
        action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }
    },
}

return config