-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

-- Standard awesome library
local awful = require("awful")
require("awful.autofocus")

-- Enable hotkeys help widget for VIM and other apps
-- when client with a matching name is opened:
require("awful.hotkeys_popup.keys")

require("main/errors")
require("main/variables")
require("main/menu")
require("main/wibar")

-- Keyboard map indicator and switcher
mykeyboardlayout = awful.widget.keyboardlayout()

require("main/bindings")
require("main/rules")
require("main/signals")
