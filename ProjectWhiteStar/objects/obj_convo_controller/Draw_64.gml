
var box_height = 0;

if(showing_dialogue == true) {
	var text_x = 30;
	var text_y = 18;
	var height = 32;
	var border = 5;
	var padding = 16;

	height = string_height(current_dialogue.message);
	
	if(sprite_get_height(current_dialogue.sprite) > height) {
		height = sprite_get_height(current_dialogue.sprite);
	}
	
	height += padding * 2;
	box_height = height;
	text_x = sprite_get_width(current_dialogue.sprite) + (padding * 2);
	
	draw_set_alpha(alpha);
	
	draw_set_color(c_black);
	draw_rectangle(0, 0, display_get_gui_width(), height, false);
	
	draw_set_color(c_white);
	draw_rectangle (border, border, display_get_gui_width() - border, height - border, false);
	
	draw_set_color(c_black);
	draw_rectangle((border * 2), (border * 2), display_get_gui_width() - (border * 2), height - (border * 2), false);

	if(current_dialogue.sprite!= -1) {
	draw_sprite(current_dialogue.sprite, 0, border * 3, border * 3);
	}
	
	draw_set_color (c_white);
	draw_text_ext(text_x, text_y, current_dialogue.message, 16, display_get_gui_width() - 192);
	
	alpha = lerp(alpha, 1, 0.06);


}

draw_set_alpha(1);

if (active && stage == 1)
{
	var height = 32;
    var base_x = 30;
    var base_y = height + 12; // right under the box
    var line_h = 28;

    for (var c = 1; c <= 3; c++)
    {
        var key = string(c);
        var label = variable_struct_get(choices, key);

        if (c == selected_choice)
        {
            draw_set_color(c_yellow);
            draw_text(base_x, base_y + (c-1) * line_h, "> " + label);
        }
        else
        {
            draw_set_color(c_white);
            draw_text(base_x, base_y + (c-1) * line_h, "  " + label);
        }
    }
}