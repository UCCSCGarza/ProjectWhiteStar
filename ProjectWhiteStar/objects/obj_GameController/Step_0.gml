// Toggle minimap
if (keyboard_check_pressed(ord("M"))) {
    map_open = !map_open;
}

if (map_open && mouse_check_button_pressed(mb_left))
{
    var map_x = 20;
    var map_y = display_get_gui_height() - (sprite_get_height(map_sprite) * map_scale) - 200;
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);

    for (var i = 0; i < array_length(map_buttons); i++)
    {
        var b = map_buttons[i];

        var bx = map_x + b.x * map_scale;
        var by = map_y + b.y * map_scale;

        var half_size = 32 * 0.5; // button sprite is 64x64 scaled 0.5

        var left   = bx - half_size;
        var top    = by - half_size;
        var right  = bx + half_size;
        var bottom = by + half_size;

        if (point_in_rectangle(mx, my, left, top, right, bottom))
        {
            global.current_area = b.name; // update current area
            load_area(b.name);            // load the room
            map_open = false;
            break;
        }
    }
}
