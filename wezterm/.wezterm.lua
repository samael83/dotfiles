local wezterm = require "wezterm"
local config = wezterm.config_builder()

config.font = wezterm.font("Inconsolata SemiExpanded", { weight = 400 })
config.font_size = 12
config.line_height = 1.2

config.enable_tab_bar = false
config.window_background_opacity = 0.78
config.color_scheme = "Horizon Dark (base16)"

config.colors = {
    background = "#000813",
    foreground = "#c7c7c7",
}

config.window_padding = {
    top = 17,
    right = 17,
    bottom = 17,
    left = 17,
}

-- WSL specific
-- config.default_prog = { "powershell" }
-- config.window_decorations = "INTEGRATED_BUTTONS | RESIZE"
-- config.win32_system_backdrop = "Acrylic"

-- MacOS specific
-- config.window_decorations = "MACOS_FORCE_ENABLE_SHADOW | RESIZE"
-- config.macos_window_backgroun_blur = 33

return config
