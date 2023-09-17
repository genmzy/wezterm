local wezterm = require('wezterm')
local platform = require('utils.platform')

local font = 'ComicCodeLigatures Nerd Font'
--local font = 'ComicCodeLigatures NF'
-- local font_size = platform().is_mac and 12 or 9
local font_size = 13

return {
  font = wezterm.font(font),
  font_size = font_size,
  text_background_opacity = 1.0,

  --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
  freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
  freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
}
