local wezterm = require 'wezterm'

return {
	default_prog = {"/usr/bin/nu"},
	font = wezterm.font_with_fallback {
		{ family = 'PragmataPro Mono', harfbuzz_features = { 'liga=0'} },
		{ family = 'JetBrains Mono' },
		'Droid Sans Mono',
		"Noto Color Emoji"
	},
	font_size = 14,
	freetype_load_target = 'Light',
	freetype_render_target = 'HorizontalLcd',
	-- use_cap_height_to_scale_fallback_fonts = true,
	color_scheme = 'Tokyo Night Storm',
	default_cursor_style = "BlinkingBlock",
	window_decorations = "INTEGRATED_BUTTONS|RESIZE",

	--[[ 
		a workaround for the Wayland compatibility, 
		per https://github.com/wez/wezterm/issues/3225#issuecomment-1467374820  
	--]]
	--front_end = "WebGpu", 
	enable_wayland = false,
}
