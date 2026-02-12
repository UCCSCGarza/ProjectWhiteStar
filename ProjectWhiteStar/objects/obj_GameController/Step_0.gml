// Toggle minimap
if (keyboard_check_pressed(ord("M"))) {
    map_open = !map_open;
}

if (map_open && mouse_check_button_pressed(mb_left)) {

    // Define minimap position and size
    var sprite_w = sprite_get_width(map_sprite) * map_scale;
    var sprite_h = sprite_get_height(map_sprite) * map_scale;

    var map_x = 20;
    var map_y = display_get_gui_height() - sprite_h - 200;

    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);

    for (var i = 0; i < array_length(map_buttons); i++) {
        var b = map_buttons[i];

        var half_size = 32 * map_scale; // half of 64x64 button sprite

        var left   = map_x + b.x - half_size;
        var top    = map_y + b.y - half_size;
        var right  = map_x + b.x + half_size;
        var bottom = map_y + b.y + half_size;

		if (point_in_rectangle(mx, my, left, top, right, bottom))
		{
			global.current_area = b.name;
			load_area(b.name);
			show_debug_message("Clicked: " + b.name); // <- debug
			map_open = false;
			break;
		}
    }
}
