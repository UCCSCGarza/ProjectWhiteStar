if (map_open)
{
    var map_x = 20;
    var map_y = display_get_gui_height() - (sprite_get_height(map_sprite) * map_scale) - 50;

    // Draw minimap background
    draw_sprite_ext(map_sprite, 0, map_x, map_y, map_scale, map_scale, 0, c_white, 1);

    // Draw buttons
    for (var i = 0; i < array_length(map_buttons); i++)
    {
        var b = map_buttons[i];

        // Button position in GUI
        var bx = map_x + b.x * map_scale;
        var by = map_y + b.y * map_scale;

        var button_scale = 0.5; // scale button sprite
        var half_size = 32 * button_scale; // 64x64 button sprite

        // Determine color
        var button_color;
        if (b.name == global.current_area) button_color = c_yellow;
        else if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),
                                    bx - half_size, by - half_size,
                                    bx + half_size, by + half_size)) button_color = c_lime;
        else
        {
            switch (b.name)
            {
                case "captain": button_color = c_red; break;
                case "hidden":  button_color = c_blue; break;
                case "boiler":  button_color = c_aqua; break;
                case "dining":  button_color = c_gray; break;
                default:        button_color = c_white; break;
            }
        }

        draw_sprite_ext(spr_minimap_button, 0, bx, by, button_scale, button_scale, 0, button_color, 1);
    }
}
