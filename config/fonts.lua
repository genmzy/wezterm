local wezterm = require('wezterm')
local platform = require('utils.platform')()

local font_size
local font
local line_height = 1.0

local weight = 300

if platform.is_linux then
  font = wezterm.font_with_fallback({
    { family = 'LigaSrcPro Nerd Font', weight = weight },
    { family = 'Noto Sans Mono CJK SC' },
  })
  font_size = 16
elseif platform.is_win then
  weight = 400
  line_height = 1.1
  font = wezterm.font({ family = 'LigaSrcPro Nerd Font', weight = weight })
  font_size = 13.5
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

  -- make bold use DemiBold
  font_rules = {
    {
      intensity = 'Bold',
      italic = false,
      font = wezterm.font(
        'LigaSrcPro Nerd Font',
        { weight = weight + 300, stretch = 'Normal', style = 'Normal' }
      ),
    },
    {
      intensity = 'Bold',
      italic = true,
      font = wezterm.font(
        'LigaSrcPro Nerd Font',
        { weight = weight + 300, stretch = 'Normal', style = 'Italic' }
      ),
    },
  },
}
