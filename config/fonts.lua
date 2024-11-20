local wezterm = require('wezterm')
local platform = require('utils.platform')()
local local_cfg = require('local.local')

local font_size
local font
local line_height = 1.0

local weight = 300

if platform.is_linux then
  line_height = 1.1
  font = wezterm.font_with_fallback({
    { family = 'RecMonoDuotone Nerd Font' },
  })
  font_size = local_cfg.screen_k == 2 and 14.8 or 14.5
elseif platform.is_win then
  weight = 400
  line_height = 1.1
  font = wezterm.font({ family = 'LigaSrcPro Nerd Font', weight = weight })
  font_size = 13
else
  font = wezterm.font({ family = 'LigaSrcPro Nerd Font', weight = weight })
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
