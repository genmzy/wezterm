local wezterm = require('wezterm')
local platform = require('utils.platform')()

local font_size
local font
if platform.is_linux then
  font = wezterm.font_with_fallback({
    { family = 'ComicCodeLigatures Nerd Font' },
    { family = 'Noto Sans Mono CJK SC' },
  })
  font_size = 13
elseif platform.is_win then
  font = wezterm.font('ComicCodeLigatures NF')
  font_size = 12
else
  font = wezterm.font('ComicCodeLigatures Nerd Font')
  font_size = 12
end

return {
  font = font,
  font_size = font_size,
  text_background_opacity = 1.0,

  --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
  freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
  freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
}
