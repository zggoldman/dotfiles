-- Pull in the wezterm API
local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.scrollback_lines = 1000000

-- Font options.
config.font = wezterm.font('CaskaydiaCove Nerd Font Mono')
config.font_size = 18.0
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' } -- Disable font ligatures.

-- Theming
config.color_scheme = "Catppuccin Mocha"

-- Keybinds.
config.leader = { key = ' ', mods = 'CTRL', timeout_milliseconds = 1000 }

MODIFIER = 'CTRL|SHIFT'

config.keys = {
  -- Font size changing. We'll be using these keys for pane management.
  { key = '(',          mods = MODIFIER, action = wezterm.action.DecreaseFontSize },
  { key = ')',          mods = MODIFIER, action = wezterm.action.IncreaseFontSize },

  -- Move between panes directionally.
  { key = 'h',          mods = MODIFIER, action = wezterm.action.ActivatePaneDirection('Left'), },
  { key = 'l',          mods = MODIFIER, action = wezterm.action.ActivatePaneDirection('Right'), },
  { key = 'k',          mods = MODIFIER, action = wezterm.action.ActivatePaneDirection('Up'), },
  { key = 'j',          mods = MODIFIER, action = wezterm.action.ActivatePaneDirection('Down'), },

  -- Pane management.
  { key = '|',          mods = MODIFIER, action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }, },
  { key = '_',          mods = MODIFIER, action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' }, },
  { key = "Backspace",  mods = MODIFIER, action = wezterm.action.CloseCurrentPane { confirm = false } },

  -- Cursor movement.
  { key = 'LeftArrow',  mods = 'OPT',    action = wezterm.action.SendString '\x1bb' },
  { key = 'RightArrow', mods = 'OPT',    action = wezterm.action.SendString '\x1bf' },
}

return config
