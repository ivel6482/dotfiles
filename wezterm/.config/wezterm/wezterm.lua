local wezterm = require("wezterm")

local config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	-- window_decorations = "RESIZE",
	font = wezterm.font("Terminess Nerd Font Mono", { weight = "Regular", italic = false }),
	font_size = 20,
	color_scheme = "tokyonight",
	window_padding = {
		top = 0,
		right = 0,
		bottom = 0,
		left = 0,
	},
}

return config
