-- A slightly altered version of catppucchin mocha
local mocha = {
  rosewater = '#f5e0dc',
  flamingo = '#f2cdcd',
  pink = '#f5c2e7',
  mauve = '#cba6f7',
  red = '#cc241d',
  maroon = '#eba0ac',
  peach = '#fab387',
  yellow = '#f9e2af',
  green = '#8ec07c',
  teal = '#94e2d5',
  sky = '#89dceb',
  sapphire = '#74c7ec',
  blue = '#83a598',
  lavender = '#b4befe',
  text = '#f8f8f2',
  subtext1 = '#bac2de',
  subtext0 = '#a6adc8',
  overlay2 = '#9399b2',
  overlay1 = '#7f849c',
  overlay0 = '#6c7086',
  surface2 = '#98971a',
  surface1 = '#45475a',
  gray = '#3c3836',
  surface0 = '#313244',
  select = 'rgba(26.666668% 27.843138% 35.294117% 50%)',
  base = '#282a36',
  mantle = '#181825',
  crust = '#11111b',
}

local colorscheme = {
  foreground = mocha.text,
  background = mocha.base,
  cursor_bg = mocha.text,
  cursor_border = mocha.rosewater,
  cursor_fg = mocha.crust,
  selection_bg = mocha.select,

  ansi = {
    '#21222c',
    '#ff5555',
    '#50fa7b',
    '#f1fa8c',
    '#bd93f9',
    '#ff79c6',
    '#8be9fd',
    '#f8f8f2',
  },
  brights = {
    '#6272a4',
    '#ff6e6e',
    '#69ff94',
    '#ffffa5',
    '#d6acff',
    '#ff92df',
    '#a4ffff',
    '#ffffff',
  },

  tab_bar = {
    -- background = '#000000',
    background = mocha.base,
    active_tab = {
      bg_color = mocha.surface2,
      fg_color = mocha.text,
    },
    inactive_tab = {
      bg_color = mocha.surface0,
      fg_color = mocha.subtext1,
    },
    inactive_tab_hover = {
      bg_color = mocha.surface0,
      fg_color = mocha.text,
    },
    new_tab = {
      bg_color = mocha.base,
      fg_color = mocha.text,
    },
    new_tab_hover = {
      bg_color = mocha.mantle,
      fg_color = mocha.text,
      italic = true,
    },
  },
  visual_bell = mocha.surface0,
  indexed = {
    [16] = mocha.peach,
    [17] = mocha.rosewater,
  },
  scrollbar_thumb = mocha.gray,
  split = mocha.overlay0,
  compose_cursor = mocha.flamingo, -- nightbuild only
  copy_mode_inactive_highlight_fg = { Color = mocha.text },
  copy_mode_inactive_highlight_bg = { Color = mocha.blue },
  copy_mode_active_highlight_fg = { Color = mocha.red },
  copy_mode_active_highlight_bg = { Color = mocha.green },
}

return colorscheme
