local wezterm = require("wezterm")
-- TODO: add wezterm-session-manager
-- TODO: neovim panes configuration: https://www.florianbellmann.com/blog/switch-from-tmux-to-wezterm#wezterm-meets-neovim

local config = wezterm.config_builder()

config.automatically_reload_config = true

-- config.window_decorations = "RESIZE"

config.font = wezterm.font("Terminess Nerd Font Mono", { weight = "Regular", italic = false })
config.font_size = 20

config.color_scheme = "tokyonight"

config.window_background_opacity = 0.9

config.window_padding = {
	top = 0,
	right = 0,
	bottom = 0,
	left = 0,
}

config.enable_tab_bar = true
config.tab_and_split_indices_are_zero_based = true
config.hide_tab_bar_if_only_one_tab = false
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false

config.leader = {
	key = "q",
	mods = "ALT",
	timeout_milliseconds = 2000,
}

function ToggleOpacity(window, _)
	local overrides = window:get_config_overrides() or {}

	if overrides.window_background_opacity == 1.0 then
		overrides.window_background_opacity = 0.9
	else
		overrides.window_background_opacity = 1.0
	end

	window:set_config_overrides(overrides)
end

config.keys = {
	{
		key = "o",
		mods = "LEADER",
		action = wezterm.action_callback(ToggleOpacity),
	},
	{
		key = "c",
		mods = "LEADER",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	{
		key = "x",
		mods = "LEADER",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	{
		key = "b",
		mods = "LEADER",
		action = wezterm.action.ActivateTabRelative(-1),
	},
	{
		key = "n",
		mods = "LEADER",
		action = wezterm.action.ActivateTabRelative(1),
	},
	{
		key = "\\",
		mods = "LEADER",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "-",
		mods = "LEADER",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "h",
		mods = "LEADER",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "j",
		mods = "LEADER",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "k",
		mods = "LEADER",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "l",
		mods = "LEADER",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		mods = "LEADER",
		key = "LeftArrow",
		action = wezterm.action.AdjustPaneSize({ "Left", 5 }),
	},
	{
		mods = "LEADER",
		key = "RightArrow",
		action = wezterm.action.AdjustPaneSize({ "Right", 5 }),
	},
	{
		mods = "LEADER",
		key = "DownArrow",
		action = wezterm.action.AdjustPaneSize({ "Down", 5 }),
	},
	{
		mods = "LEADER",
		key = "UpArrow",
		action = wezterm.action.AdjustPaneSize({ "Up", 5 }),
	},
}

for i = 0, 9 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "LEADER",
		action = wezterm.action.ActivateTab(i),
	})
end

return config
