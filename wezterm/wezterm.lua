-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'GruvboxDark'

config.keys = {
  {
    key = 'W',
    mods = 'ALT',
    action = wezterm.action.CopyTo 'ClipboardAndPrimarySelection',
  },
  {
    key = 'Y',
    mods = 'CTRL',
    action = wezterm.action.PasteFrom 'Clipboard',
  },
}



-- and finally, return the configuration to wezterm
return config
