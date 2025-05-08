-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.color_scheme = 'Catppuccin Macchiato'
config.default_cursor_style = 'SteadyUnderline'
config.underline_thickness = "3px"
config.default_prog = { 'pwsh.exe' }
config.window_decorations = "RESIZE"
config.font = wezterm.font("0xProto Nerd Font Mono", { weight = "Regular" })
config.font_size = 13.0
config.window_background_opacity = 0.92

config.window_close_confirmation = 'NeverPrompt' -- Set WezTerm to never ask for confirmation when closing

-- Tab bar customizations

config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false


-- Clear PowerShell boilerplates

config.default_prog = { "pwsh.exe", "-NoLogo" }

-- Setup Kitty Graphics for image preview

config.enable_kitty_keyboard = true
config.enable_kitty_graphics = true

return config