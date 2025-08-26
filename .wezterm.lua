-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28
config.window_background_opacity = 0.95 -- lower value means more transparent

-- or, changing the font size and color scheme.
config.font_size = 14
config.color_scheme = "Framer (base16)"
config.keys = {
	-- Option + Left = move back one word
	{
		key = "LeftArrow",
		mods = "OPT",
		action = wezterm.action.SendKey({ key = "b", mods = "ALT" }),
	},
	-- Option + Right = move forward one word
	{
		key = "RightArrow",
		mods = "OPT",
		action = wezterm.action.SendKey({ key = "f", mods = "ALT" }),
	},
}

-- Finally, return the configuration to wezterm:
return config
