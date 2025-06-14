local wezterm = require('wezterm')
local platform = require('utils.platform')()
local act = wezterm.action

local mod = {}

if platform.is_mac then
  mod.SUPER = 'SUPER'
  mod.SUPER_REV = 'SUPER|CTRL'
elseif platform.is_win then
  mod.SUPER = 'ALT' -- to not conflict with Windows key shortcuts
  mod.SUPER_REV = 'ALT|CTRL'
elseif platform.is_linux then
  mod.SUPER = 'ALT'
  mod.SUPER_REV = 'ALT|CTRL'
end

local keys = {
  -- misc/useful --
  { key = 'F3', mods = mod.SUPER, action = act.ActivateCommandPalette },
  { key = 'F9', mods = mod.SUPER, action = act.ShowLauncher },
  { key = 'F10', mods = mod.SUPER, action = act.ShowTabNavigator },
  { key = 'F11', mods = mod.SUPER, action = act.ToggleFullScreen },
  { key = 'F12', mods = mod.SUPER, action = act.ShowDebugOverlay },
  { key = 'f', mods = mod.SUPER, action = act.Search({ CaseInSensitiveString = '' }) },
  { key = 'v', mods = mod.SUPER, action = 'ActivateCopyMode' },

  -- copy/paste --
  { key = 'c', mods = 'CTRL|SHIFT', action = act.CopyTo('Clipboard') },
  { key = 'Insert', mods = 'CTRL', action = act.CopyTo('Clipboard') },
  { key = 'v', mods = 'CTRL|SHIFT', action = act.PasteFrom('Clipboard') },
  { key = 'Insert', mods = 'SHIFT', action = act.PasteFrom('Clipboard') },

  -- tabs --
  -- tabs: spawn+close
  { key = 't', mods = mod.SUPER, action = act.SpawnTab('DefaultDomain') },

  -- tabs: navigation
  { key = '-', mods = mod.SUPER, action = act.ActivateTabRelative(-1) },
  { key = '=', mods = mod.SUPER, action = act.ActivateTabRelative(1) },
  { key = '-', mods = mod.SUPER_REV, action = act.MoveTabRelative(-1) },
  { key = '=', mods = mod.SUPER_REV, action = act.MoveTabRelative(1) },

  -- window --
  -- spawn windows
  { key = 'n', mods = mod.SUPER, action = act.SpawnWindow },

  -- panes --
  -- panes: split panes
  {
    key = [[\]],
    mods = mod.SUPER,
    action = act.SplitVertical({ domain = 'CurrentPaneDomain' }),
  },
  {
    key = [[\]],
    mods = mod.SUPER_REV,
    action = act.SplitHorizontal({ domain = 'CurrentPaneDomain' }),
  },

  -- panes: zoom+close pane
  { key = 'z', mods = mod.SUPER_REV, action = act.TogglePaneZoomState },
  { key = 'w', mods = mod.SUPER, action = act.CloseCurrentPane({ confirm = false }) },

  -- panes: navigation
  { key = 'k', mods = mod.SUPER_REV, action = act.ActivatePaneDirection('Up') },
  { key = 'j', mods = mod.SUPER_REV, action = act.ActivatePaneDirection('Down') },
  { key = 'h', mods = mod.SUPER_REV, action = act.ActivatePaneDirection('Left') },
  { key = 'l', mods = mod.SUPER_REV, action = act.ActivatePaneDirection('Right') },

  -- key-tables --
  -- resizes fonts
  {
    key = 'f',
    mods = 'LEADER',
    action = act.ActivateKeyTable({
      name = 'resize_font',
      one_shot = false,
      timemout_miliseconds = 1000,
    }),
  },
  -- resize panes
  {
    key = 'p',
    mods = 'LEADER',
    action = act.ActivateKeyTable({
      name = 'resize_pane',
      one_shot = false,
      timemout_miliseconds = 1000,
    }),
  },
}

local key_tables = {
  resize_font = {
    { key = 'k', action = act.IncreaseFontSize },
    { key = 'j', action = act.DecreaseFontSize },
    { key = 'r', action = act.ResetFontSize },
    { key = 'Escape', action = 'PopKeyTable' },
    { key = 'q', action = 'PopKeyTable' },
  },
  resize_pane = {
    { key = 'k', action = act.AdjustPaneSize({ 'Up', 1 }) },
    { key = 'j', action = act.AdjustPaneSize({ 'Down', 1 }) },
    { key = 'h', action = act.AdjustPaneSize({ 'Left', 1 }) },
    { key = 'l', action = act.AdjustPaneSize({ 'Right', 1 }) },
    { key = 'Escape', action = 'PopKeyTable' },
    { key = 'q', action = 'PopKeyTable' },
  },
}

local mouse_bindings = {
  {
    event = { Down = { streak = 1, button = 'Right' } },
    mods = 'NONE',
    action = act.PasteFrom('Clipboard'),
  },
  -- Change the default click behavior so that it only selects
  -- text and doesn't open hyperlinks
  {
    event = { Up = { streak = 1, button = 'Left' } },
    mods = 'NONE',
    action = act.CompleteSelection('Clipboard'),
  },
  -- and make CTRL-Click open hyperlinks
  {
    event = { Up = { streak = 1, button = 'Left' } },
    mods = 'CTRL',
    action = 'OpenLinkAtMouseCursor',
  },
}

return {
  disable_default_key_bindings = true,
  leader = { key = 'Space', mods = 'ALT' },
  keys = keys,
  key_tables = key_tables,
  mouse_bindings = mouse_bindings,
}
