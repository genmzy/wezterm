-- A slightly altered version of catppucchin mocha
local mocha = {
  rosewater = '#f5e0dc',
  flamingo = '#f2cdcd',
  pink = '#f5c2e7',
  mauve = '#cba6f7',
  red = '#f38ba8',
  maroon = '#eba0ac',
  peach = '#fab387',
  yellow = '#f9e2af',
  green = '#a6e3a1',
  teal = '#94e2d5',
  sky = '#89dceb',
  sapphire = '#74c7ec',
  blue = '#89b4fa',
  lavender = '#b4befe',
  text = '#f2e5bc',
  subtext1 = '#bac2de',
  subtext0 = '#a6adc8',
  overlay2 = '#9399b2',
  overlay1 = '#7f849c',
  overlay0 = '#6c7086',
  surface2 = '#98971a',
  surface1 = '#45475a',
  surface0 = '#313244',
  select = '#665c54',
  base = '#282828',
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
    '#32302f',
    '#fb4934',
    '#b8bb26',
    '#fabd2f',
    '#83a598',
    '#d3869b',
    '#8ec07c',
    '#f2e5bc',
  },
  brights = {
    '#282828',
    '#cc241d',
    '#98971a',
    '#d79921',
    '#458588',
    '#b16286',
    '#689d6a',
    '#ebdbb2',
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
