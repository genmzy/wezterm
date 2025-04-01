local colors = require('colors.custom')
-- local fonts = require('config.fonts')

return {
  -- ui
  front_end = 'OpenGL',

  -- ligature fix
  freetype_load_flags = 'NO_HINTING',

  -- color scheme
  colors = colors,

  -- background
  background = {
    {
      source = { Color = colors.background },
      opacity = 0.93,
      width = '100%',
      height = '100%',
    },
  },

  -- cursor
  default_cursor_style = 'BlinkingBlock',
  cursor_blink_rate = 800,

  -- scrollbar
  enable_scroll_bar = true,

  -- tab bar
  enable_tab_bar = true,
  hide_tab_bar_if_only_one_tab = false,
  use_fancy_tab_bar = false,
  tab_max_width = 25,
  show_tab_index_in_tab_bar = false,
  switch_to_last_active_tab_when_closing_tab = true,

  -- window
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },
  window_decorations = 'RESIZE',
  window_close_confirmation = 'NeverPrompt',
  inactive_pane_hsb = { saturation = 1.0, brightness = 1.0 },
}
