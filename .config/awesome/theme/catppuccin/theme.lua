---------------------------
-- Default awesome theme --
---------------------------
local gears = require("gears")

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local theme_path = os.getenv("HOME") .. "/.config/awesome/theme/catppuccin/"

local theme = {}
local colors = {}
colors.macchiato = {}
colors.macchiato.crust = "#181926"
colors.macchiato.mantle = "#1e2030"
colors.macchiato.base = "#24273a"
colors.macchiato.surface0 = "#363a4f"
colors.macchiato.surface1 = "#494d64"
colors.macchiato.surface2 = "#5b6078"
colors.macchiato.overlay0 = "#6e738d"
colors.macchiato.overlay1 = "#8087a2"
colors.macchiato.overlay2 = "#939ab7"
colors.macchiato.subtext0 = "#a5adcb"
colors.macchiato.subtext1 = "#b8c0e0"
colors.macchiato.text = "#cad3f5"
colors.macchiato.lavender = "#b7bdf8"
colors.macchiato.blue = "#8aadf4"
colors.macchiato.sapphire = "#7dc4e4"
colors.macchiato.sky = "#91d7e3"
colors.macchiato.teal = "#8bd5ca"
colors.macchiato.green = "#a6da95"
colors.macchiato.yellow = "#eed49f"
colors.macchiato.peach = "#f5a97f"
colors.macchiato.maroon = "#ee99a0"
colors.macchiato.red = "#ed8796"
colors.macchiato.mauve = "#c6a0f6"
colors.macchiato.pink = "#f5bde6"
colors.macchiato.flamingo = "#f0c6c6"
colors.macchiato.rosewater = "#f4dbd6"

theme.font          = "san 11"

theme.bg_normal     = colors.macchiato.base
theme.bg_focus      = colors.macchiato.base
theme.bg_urgent     = "#ff0000"
theme.bg_minimize   = "#444444"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = colors.macchiato.text
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.useless_gap   = dpi(0)
theme.border_width  = dpi(1)
theme.border_normal = "#000000"
theme.border_focus  = "#535d6c"
theme.border_marked = "#91231c"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = theme_path.."default/submenu.png"
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"


-- Define the image to load
theme.titlebar_close_button_normal = theme_path.."/assets/icons/circle.svg"
theme.titlebar_close_button_focus  = theme_path.."/assets/icons/circle.svg"
theme.titlebar_close_button_normal_hover = theme_path.."/assets/icons/circle.svg"
theme.titlebar_close_button_focus_hover  = theme_path.."/assets/icons/circle.svg"

theme.titlebar_minimize_button_normal = theme_path.."/assets/icons/circle.svg"
theme.titlebar_minimize_button_focus  = theme_path.."/assets/icons/circle.svg"
theme.titlebar_minimize_button_normal_hover = theme_path.."/assets/icons/circle.svg"
theme.titlebar_minimize_button_focus_hover  = theme_path.."/assets/icons/circle.svg"

theme.titlebar_maximized_button_normal_inactive = theme_path.."/assets/icons/circle.svg"
theme.titlebar_maximized_button_focus_inactive  = theme_path.."/assets/icons/circle.svg"
theme.titlebar_maximized_button_normal_active = theme_path.."/assets/icons/circle.svg"
theme.titlebar_maximized_button_focus_active  = theme_path.."/assets/icons/circle.svg"
theme.titlebar_maximized_button_normal_inactive_hover = theme_path.."/assets/icons/circle.svg"
theme.titlebar_maximized_button_focus_inactive_hover = theme_path.."/assets/icons/circle.svg"
theme.titlebar_maximized_button_normal_active_hover = theme_path.."/assets/icons/circle.svg"
theme.titlebar_maximized_button_focus_active_hover = theme_path.."/assets/icons/circle.svg"

theme.wallpaper = theme_path.."/assets/wallpaper_blue.png"

-- You can use your own layout icons like this:
theme.layout_fairh = theme_path.."default/layouts/fairhw.png"
theme.layout_fairv = theme_path.."default/layouts/fairvw.png"
theme.layout_floating  = theme_path.."default/layouts/floatingw.png"
theme.layout_magnifier = theme_path.."default/layouts/magnifierw.png"
theme.layout_max = theme_path.."default/layouts/maxw.png"
theme.layout_fullscreen = theme_path.."default/layouts/fullscreenw.png"
theme.layout_tilebottom = theme_path.."default/layouts/tilebottomw.png"
theme.layout_tileleft   = theme_path.."default/layouts/tileleftw.png"
theme.layout_tile = theme_path.."default/layouts/tilew.png"
theme.layout_tiletop = theme_path.."default/layouts/tiletopw.png"
theme.layout_spiral  = theme_path.."default/layouts/spiralw.png"
theme.layout_dwindle = theme_path.."default/layouts/dwindlew.png"
theme.layout_cornernw = theme_path.."default/layouts/cornernww.png"
theme.layout_cornerne = theme_path.."default/layouts/cornernew.png"
theme.layout_cornersw = theme_path.."default/layouts/cornersww.png"
theme.layout_cornerse = theme_path.."default/layouts/cornersew.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

--------------------------------------------------------------------------------
-- SVG colors
--------------------------------------------------------------------------------
local function strip_prefix(str, p)
    return (str:sub(0, #p) == p) and str:sub(#p+1) or str
end
local function clamp(component)
    return math.min(math.max(component, 0), 255)
end
local function LightenDarkenColor(hex, amt)
    local col = strip_prefix(hex, "#")
    local num = tonumber(col, 16)
    local r = math.floor(num / 0x10000) + amt
    local g = (math.floor(num / 0x100) % 0x100) + amt
    local b = (num % 0x100) + amt
    local str = string.format("%#x", clamp(r) * 0x10000 + clamp(g) * 0x100 + clamp(b))
    return "#"..strip_prefix(str, "0x")
end

-- Close button
theme.titlebar_close_button_normal = gears.color.recolor_image(
    theme.titlebar_close_button_normal, colors.macchiato.red)
theme.titlebar_close_button_focus = gears.color.recolor_image(
    theme.titlebar_close_button_focus, colors.macchiato.red)
theme.titlebar_close_button_normal_hover = gears.color.recolor_image(
    theme.titlebar_close_button_normal_hover, LightenDarkenColor(colors.macchiato.maroon, -80))
theme.titlebar_close_button_focus_hover = gears.color.recolor_image(
    theme.titlebar_close_button_focus_hover, LightenDarkenColor(colors.macchiato.maroon, -80))

-- Maximize button
theme.titlebar_maximized_button_normal_active = gears.color.recolor_image(
    theme.titlebar_maximized_button_normal_active, colors.macchiato.green)
theme.titlebar_maximized_button_focus_active = gears.color.recolor_image(
    theme.titlebar_maximized_button_focus_active, colors.macchiato.green)
theme.titlebar_maximized_button_normal_inactive = gears.color.recolor_image(
    theme.titlebar_maximized_button_normal_inactive, colors.macchiato.green)
theme.titlebar_maximized_button_focus_inactive = gears.color.recolor_image(
    theme.titlebar_maximized_button_focus_inactive, colors.macchiato.green)
theme.titlebar_maximized_button_normal_active_hover = gears.color.recolor_image(
    theme.titlebar_maximized_button_normal_active_hover, LightenDarkenColor(colors.macchiato.green, -80))
theme.titlebar_maximized_button_focus_active_hover = gears.color.recolor_image(
    theme.titlebar_maximized_button_focus_active_hover, LightenDarkenColor(colors.macchiato.green, -80))
theme.titlebar_maximized_button_normal_inactive_hover = gears.color.recolor_image(
    theme.titlebar_maximized_button_normal_inactive_hover, LightenDarkenColor(colors.macchiato.green, -80))
theme.titlebar_maximized_button_focus_inactive_hover = gears.color.recolor_image(
    theme.titlebar_maximized_button_focus_inactive_hover, LightenDarkenColor(colors.macchiato.green, -80))

-- Minimize button
theme.titlebar_minimize_button_normal = gears.color.recolor_image(
    theme.titlebar_minimize_button_normal, colors.macchiato.yellow)
theme.titlebar_minimize_button_focus = gears.color.recolor_image(
    theme.titlebar_minimize_button_focus, colors.macchiato.yellow)
theme.titlebar_minimize_button_normal_hover = gears.color.recolor_image(
    theme.titlebar_minimize_button_normal_hover, LightenDarkenColor(colors.macchiato.yellow, -80))
theme.titlebar_minimize_button_focus_hover = gears.color.recolor_image(
    theme.titlebar_minimize_button_focus_hover, LightenDarkenColor(colors.macchiato.yellow, -80))

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
