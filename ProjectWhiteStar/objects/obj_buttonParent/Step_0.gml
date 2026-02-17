var ms_x = device_mouse_x(0);
var ms_y = device_mouse_y(0);

hovering = point_in_rectangle(ms_x, ms_y, bbox_left, bbox_top, bbox_right, bbox_bottom);

if (hovering && mouse_check_button_pressed(mb_left)) {
    show_debug_message("CLICKED"); // test
	
	if(next_room == undefined)
		game_end();
	else
		draw_set_font(font_dialogue);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		room_goto(next_room);
}