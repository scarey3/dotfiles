-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

-- Standard awesome library
local awful = require("awful")
require("awful.autofocus")

-- Enable hotkeys help widget for VIM and other apps
-- when client with a matching name is opened:
require("awful.hotkeys_popup.keys")

-- Theme handling library
local beautiful = require("beautiful")

--------------------------------------------------------------------------------
-- 2.0
--------------------------------------------------------------------------------
-- Themes define colours, icons, font and wallpapers.
beautiful.init("/home/scarey/.config/awesome/theme/catppuccin/theme.lua")

-- Global instance
WM = {}
WM.var = require("var")

-- Components
require("components.titlebar")

-- Table of layouts to cover with awful.layout.inc, order matters.
awful.layout.layouts = {
    awful.layout.suit.floating,
    awful.layout.suit.tile,
    awful.layout.suit.tile.left,
    awful.layout.suit.tile.bottom,
    awful.layout.suit.tile.top,
    awful.layout.suit.fair,
    awful.layout.suit.fair.horizontal,
    awful.layout.suit.spiral,
    awful.layout.suit.spiral.dwindle,
    awful.layout.suit.max,
    awful.layout.suit.max.fullscreen,
    awful.layout.suit.magnifier,
    awful.layout.suit.corner.nw,
    -- awful.layout.suit.corner.ne,
    -- awful.layout.suit.corner.sw,
    -- awful.layout.suit.corner.se,
}

--------------------------------------------------------------------------------
-- Legacy shim
--------------------------------------------------------------------------------
terminal = WM.var.terminal
editor = WM.var.editor
editor_cmd = WM.var.editor_cmd
modkey = WM.var.modkey

--------------------------------------------------------------------------------
-- Legacy
--------------------------------------------------------------------------------
require("main/errors")
require("main/menu")
require("main/wibar")

-- Keyboard map indicator and switcher
mykeyboardlayout = awful.widget.keyboardlayout()

require("main/bindings")
require("main/rules")
require("main/signals")

