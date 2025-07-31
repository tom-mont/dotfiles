-- Pull in the wezterm API
local wezterm = require("wezterm")
local mux = wezterm.mux

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28
-- or, changing the font size and color scheme.
config.font_size = 10
config.color_scheme = "AdventureTime"
config.window_background_opacity = 0.85
config.enable_tab_bar = false
config.window_decorations = "NONE"
wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	local gui_window = window:gui_window()
	gui_window:maximize() -- Or gui_window:toggle_fullscreen() for true fullscreen
end)
-- Finally, return the configuration to wezterm:
return config
