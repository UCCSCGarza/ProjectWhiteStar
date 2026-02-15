// Get mouse coordinates in GUI space
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

var base_x = 40;
var base_y = display_get_gui_height() - 240;

if (mouse_check_button_pressed(mb_left))
{
    // Boiler button
    if (point_in_rectangle(mx, my, base_x + 20, base_y + 30, base_x + 120, base_y + 80))
    {
        load_area("boiler");
    }

    // Captain button
    if (point_in_rectangle(mx, my, base_x + 140, base_y + 30, base_x + 260, base_y + 80))
    {
        load_area("captain");
    }

    // Dining button
    if (point_in_rectangle(mx, my, base_x + 20, base_y + 100, base_x + 120, base_y + 150))
    {
        load_area("dining");
    }

    // Hidden button
    if (point_in_rectangle(mx, my, base_x + 140, base_y + 100, base_x + 260, base_y + 150))
    {
        load_area("hidden");
    }
}
