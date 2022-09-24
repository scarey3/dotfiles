--------------------------------------------------------------------------------
-- Titlebar
--------------------------------------------------------------------------------

-- Standard awesome library
local gears = require("gears")
local awful = require("awful")

-- Widget and layout library
local wibox = require("wibox")


-- Add a titlebar if titlebars_enabled is set to true in the rules.
client.connect_signal("request::titlebars", function(c)
    -- buttons for the titlebar
    local buttons = gears.table.join(
        awful.button({ }, 1, function()
            c:emit_signal("request::activate", "titlebar", {raise = true})

            -- Allow maximized windows to be dragged
            if c.maximized then
                c.maximized = false
                local mouse_x = mouse.coords().x
                local mouse_y = mouse.coords().y
                local client_w = c:geometry().width
                c:geometry({x = mouse_x - client_w / 2, y = mouse_y - 15})
            end

            awful.mouse.client.move(c)
        end),
        awful.button({ }, 3, function()
            c:emit_signal("request::activate", "titlebar", {raise = true})

            -- Corner resizing

            awful.mouse.client.resize(c)
        end)
    )

    local button_spacing = 7;

    awful.titlebar(c, {size = 30}) : setup {
        { -- Left
            buttons = buttons,
            layout  = wibox.layout.fixed.horizontal
        },
        { -- Middle
            { -- Title
                align  = "center",
                widget = awful.titlebar.widget.titlewidget(c)
            },
            buttons = buttons,
            layout  = wibox.layout.flex.horizontal
        },
        { -- Right
            {
                awful.titlebar.widget.maximizedbutton(c),
                awful.titlebar.widget.minimizebutton(c),
                awful.titlebar.widget.closebutton    (c),
                style = {
                    font = "sans 8",
                },

                spacing = button_spacing,
                layout = wibox.layout.fixed.horizontal(),
            },
            top = button_spacing,
            bottom = button_spacing,
            right = button_spacing,
            widget = wibox.container.margin,
        },
        layout = wibox.layout.align.horizontal,
    }
end)
