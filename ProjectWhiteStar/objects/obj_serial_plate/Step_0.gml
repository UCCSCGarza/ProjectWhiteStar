hovered = point_in_rectangle(
    mouse_x, mouse_y,
    x - sprite_width/2,
    y - sprite_height/2,
    x + sprite_width/2,
    y + sprite_height/2
);

// CLICK
if (hovered && mouse_check_button_pressed(mb_left) && !global.viewing_plate)
{
    global.viewing_plate = true;
    global.found_serial = true;
}

// EXIT ZOOM
// EXIT ZOOM
if (global.viewing_plate && keyboard_check_pressed(vk_space))
{
    global.viewing_plate = false;
    zoom_scale = 1;

    // make it disappear after viewing
    instance_destroy();
}

