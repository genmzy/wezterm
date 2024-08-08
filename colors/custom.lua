---

local dawn = {
  _nc = '#f8f0e7',
  base = '#faf4ed',
  select = '#dfdad9',
  rosewater = '#f5e0dc',
  crust = '#11111b',

  surface = '#fffaf3',
  overlay = '#f2e9e1',
  muted = '#9893a5',
  subtle = '#797593',
  text = '#575279',
  love = '#b4637a',
  gold = '#ea9d34',
  rose = '#d7827e',
  pine = '#286983',
  foam = '#56949f',
  iris = '#907aa9',
  leaf = '#6d8f89',
  highlight_low = '#f4ede8',
  highlight_med = '#dfdad9',
  highlight_high = '#cecacd',
  none = 'NONE',
}

local colorscheme = {
  foreground = dawn.text,
  background = dawn.base,
  cursor_bg = dawn.text,
  cursor_border = dawn.rosewater,
  cursor_fg = dawn.crust,
  selection_bg = dawn.select,

  ansi = {
    dawn.overlay, -- black
    dawn.love, -- red
    dawn.pine, -- green
    dawn.gold, -- yellow
    dawn.foam, -- blue
    dawn.iris, -- magenta
    dawn.rose, -- cyan
    dawn.text, -- white
  },
  brights = {
    dawn.subtle, -- bright black
    dawn.love, -- bright red
    dawn.pine, -- bright green
    dawn.gold, -- bright yellow
    dawn.foam, -- bright blue
    dawn.iris, -- bright magenta
    dawn.rose, -- bright cyan
    dawn.text, -- bright white
  },
  tab_bar = {
    background = dawn.base,
    new_tab = {
      bg_color = dawn.base,
      fg_color = dawn.text,
    },
    new_tab_hover = {
      bg_color = dawn.select,
      fg_color = dawn.text,
      italic = true,
    },
  },
  -- visual_bell = mocha.surface0,
  indexed = {
    [16] = dawn.rosewater,
    [17] = dawn.rosewater,
  },
  scrollbar_thumb = dawn.rosewater,
  split = dawn.highlight_high,
  -- compose_cursor = mocha.flamingo, -- nightbuild only
}

return colorscheme
