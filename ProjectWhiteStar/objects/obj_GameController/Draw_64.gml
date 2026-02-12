if (map_open)
{
    // Minimap positioning
    var sprite_w = sprite_width  * map_scale;
    var sprite_h = sprite_height * map_scale;

    var map_x = 20;
    var map_y = display_get_gui_height() - sprite_h - 200;

    // Draw the minimap background
    draw_sprite_ext(map_sprite, 0, map_x, map_y, map_scale, map_scale, 0, c_white, 1);

    // Draw buttons
    for (var i = 0; i < array_length(map_buttons); i++)
    {
        var b = map_buttons[i];

        // Button center relative to minimap
        var bx = map_x + b.x;
        var by = map_y + b.y;

        var button_scale = 0.5; // adjust scale to fit nicely
        var half_size = 32 * button_scale;

        // Determine button color
        var button_color;

        if (b.name == global.current_area)
        {
            // Current area = yellow
            button_color = c_yellow;
        }
        else if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),
                                    bx - half_size, by - half_size,
                                    bx + half_size, by + half_size))
        {
            // Hover = green
            button_color = c_lime;
        }
        else
        {
            // Idle colors - assign distinct color per area
            switch (b.name)
            {
                case "captain": button_color = c_red; break;
                case "hidden":  button_color = c_blue; break;
                case "boiler":  button_color = c_aqua; break;
                case "dining":  button_color = c_ltgray; break;
                default:        button_color = c_white; break;
            }
        }

        // Draw the button sprite
        draw_sprite_ext(spr_minimap_button, 0, bx, by, button_scale, button_scale, 0, button_color, 1);
    }

	    // Reset color just in case
	    draw_set_color(c_white);
	
		draw_set_color(c_red);
	for (var i = 0; i < array_length(map_buttons); i++)
	{
	    var b = map_buttons[i];
	    var bx = map_x + b.x;
	    var by = map_y + b.y;
	    var half_size = 32 * 0.5;
	    draw_rectangle(bx - half_size, by - half_size, bx + half_size, by + half_size, false);
	}
	draw_set_color(c_white);

}
