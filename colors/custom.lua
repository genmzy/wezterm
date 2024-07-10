-- A slightly altered version of catppucchin mocha
local mocha = {
  rosewater = '#f5e0dc',
  flamingo = '#f2cdcd',
  pink = '#d699b6',
  mauve = '#D83A86',
  red = '#f85552',
  maroon = '#eba0ac',
  peach = '#fab387',
  yellow = '#f9e2af',
  green = '#8da101',
  teal = '#4fd6be',
  sky = '#b4f9f8',
  sapphire = '#74c7ec',
  blue = '#35989F',
  lavender = '#b4befe',
  text = '#5c6a72',
  subtext1 = '#bac2de',
  subtext0 = '#a6adc8',
  overlay2 = '#9399b2',
  overlay1 = '#7f849c',
  overlay0 = '#6c7086',
  surface2 = '#e1ddcb',
  surface1 = '#45475a',
  surface0 = '#313244',
  select = '#e6e9db',
  base = '#f3ead3',
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
    '#e1ddcb',
    '#f85552',
    '#8da101',
    '#dfa000',
    '#35989f',
    '#dc5597',
    '#35a77c',
    '#92978c',
  },
  brights = {
    '#a0a79a',
    '#f85552',
    '#8da101',
    '#dfa000',
    '#35989f',
    '#dc5597',
    '#35a77c',
    '#5c6a72',
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
  scrollbar_thumb = mocha.surface2,
  split = mocha.overlay0,
  compose_cursor = mocha.flamingo, -- nightbuild only
}

return colorscheme
