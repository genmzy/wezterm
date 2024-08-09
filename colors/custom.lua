-- deus color
local deus = {
  dark = '#2c323b',
  text = '#ebdbb2',
  base = '#ebdbb2',
  red = '#fb4934',
  orange = '#fe8019',
  yellow = '#fabd2f',
  green = '#98C379',
  aqua = '#5EAB82',
  blue = '#83a598',
  purple = '#c678dd',
  grey0 = '#d5c4a1',
  grey1 = '#928374',
  grey2 = '#928374',
  gray = '#3c3836',
  statusline1 = '#83a598',
  statusline2 = '#8ec07c',
  statusline3 = '#fb4934',
  surface0 = '#313244',
  none = 'NONE',
  rosewater = '#f5e0dc',
}

local colorscheme = {
  foreground = deus.text,
  background = deus.dark,
  cursor_bg = deus.text,
  cursor_border = deus.rosewater,
  cursor_fg = deus.dark,
  selection_bg = deus.gray,

  ansi = {
    deus.text,
    deus.red,
    deus.green,
    deus.yellow,
    deus.blue,
    deus.purple,
    deus.aqua,
    deus.grey1,
  },
  brights = {
    deus.grey2,
    deus.red,
    deus.green,
    deus.yellow,
    deus.blue,
    deus.purple,
    deus.aqua,
    deus.gray,
  },
  tab_bar = {
    background = deus.dark,
    inactive_tab_hover = {
      bg_color = deus.dark,
      fg_color = deus.text,
    },
    new_tab = {
      bg_color = deus.dark,
      fg_color = deus.text,
    },
    new_tab_hover = {
      bg_color = deus.surface0,
      fg_color = deus.text,
    },
  },
  visual_bell = deus.surface0,
  scrollbar_thumb = deus.grey1,
  split = deus.surface0,
  -- compose_cursor = mocha.flamingo, -- nightbuild only
  copy_mode_inactive_highlight_fg = { Color = deus.text },
  copy_mode_inactive_highlight_bg = { Color = deus.blue },
  copy_mode_active_highlight_fg = { Color = deus.red },
  copy_mode_active_highlight_bg = { Color = deus.green },
}

return colorscheme
