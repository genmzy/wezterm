local wezterm = require('wezterm')
local platform = require('utils.platform')()
local sk = require('local.local').screen_k

local font_size
local font
local line_height = 1.0
if platform.is_linux then
  line_height = 1.0
  font = wezterm.font_with_fallback({
    { family = 'RecMonoCRSV Nerd Font' },
    { family = 'LXGW WenKai Mono' },
  })
  font_size = (sk == 1 and 15.1 or 15.7)
elseif platform.is_win then
  line_height = 1.2
  -- font = wezterm.font('RecMonoGenmzyUnsimple NF')
  font = wezterm.font('Maple Mono NF CN')
  -- font = wezterm.font('ComicCodeLigaturesNerdFontComplete Nerd Font')
  font_size = 13.5
else
  font = wezterm.font('ComicCodeLigatures Nerd Font')
  font_size = 12
end

return {
  font = font,
  font_size = font_size,
  text_background_opacity = 1.0,

  line_height = line_height,
  --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
  freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
  freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
}
