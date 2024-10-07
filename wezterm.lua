-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.default_prog = { 'powershell.exe' }

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Catppuccin Macchiato'
config.font = wezterm.font_with_fallback ({
    { family = 'JetBrains Mono'},
    { family = 'JetBrains Mono Nerd Font'},
  })

-- and finally, return the configuration to wezterm
return config
