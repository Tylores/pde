-- Pull in the wezterm API
local wezterm       = require 'wezterm'
local act           = wezterm.action
local config        = wezterm.config_builder()

config.default_prog = { 'powershell.exe' }

local wsl_domains   = wezterm.default_wsl_domains()

-- This is where you actually apply your config choices
config.color_scheme = 'Catppuccin Macchiato'
config.font = wezterm.font_with_fallback({
	{ family = 'JetBrains Mono' },
	{ family = 'JetBrains Mono Nerd Font' },
})

config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.switch_to_last_active_tab_when_closing_tab = true

config.leader = {
	key = 'a',
	mods = 'CTRL',
	timeout_milliseconds = 2000,
}

config.keys = {
	-- launcher
	{ key = 'l', mods = 'LEADER', action = act.ShowLauncher },
	-- new window
	{
		key = 'w',
		mods = 'LEADER',
		action = wezterm.action_callback(function(win, pane)
			local tab, window = pane:move_to_new_window()
		end),
	},
	-- Tab keybindings
	{ key = "n", mods = "LEADER", action = act.SpawnTab("CurrentPaneDomain") },
	{ key = "[", mods = "LEADER", action = act.ActivateTabRelative(-1) },
	{ key = "]", mods = "LEADER", action = act.ActivateTabRelative(1) },
	{ key = "t", mods = "LEADER", action = act.ShowTabNavigator },
	{ key = 'd', mods = 'LEADER', action = act.CloseCurrentTab { confirm = true } },
}

-- and finally, return the configuration to wezterm
return config
