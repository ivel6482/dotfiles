local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.automatically_reload_config = true

config.enable_tab_bar = false

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

config.keys = {
	{
		key = "O",
		mods = "CTRL|ALT",
		action = wezterm.action_callback(function(window, _)
			local overrides = window:get_config_overrides() or {}

			if overrides.window_background_opacity == 1.0 then
				overrides.window_background_opacity = 0.9
			else
				overrides.window_background_opacity = 1.0
			end

			window:set_config_overrides(overrides)
		end),
	},
}

return config
