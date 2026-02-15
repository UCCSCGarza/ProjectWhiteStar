/// DRAW GUI EVENT (obj_convo_controller)
/// Centered dialogue box:
/// - Width: middle 50% of screen (25% -> 75%)
/// - Height: middle 50% of screen (25% -> 75%)

/// ----------------------------------------------------
/// 0) Setup (so choices can still place themselves)
/// ----------------------------------------------------
var box_height = 0;

var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

/// Dialogue box horizontal range: 25% to 75% (middle 50%)
var box_left  = gui_w * 0.25;
var box_right = gui_w * 0.75;

/// Dialogue box vertical anchor: centered in middle of screen height
/// We'll compute box_top after we know the box height


/// ----------------------------------------------------
/// 1) DIALOGUE BOX (only when showing_dialogue == true)
/// ----------------------------------------------------
if (showing_dialogue == true)
{
    // --- A) Layout variables
    var height = 32;
    var border = 5;
    var padding = 16;

    // --- B) Compute box height based on text and sprite
    height = string_height(current_dialogue.message);

    if (current_dialogue.sprite != -1)
    {
        if (sprite_get_height(current_dialogue.sprite) > height)
            height = sprite_get_height(current_dialogue.sprite);
    }

    height += padding * 2;
    box_height = height; // store for choices

    // --- C) Compute vertical placement (centered)
    var box_top    = (gui_h * 0.5) - (height * 0.5);
    var box_bottom = box_top + height;

    // --- D) Draw textbox background (50% translucent)
    draw_set_alpha(0.5);

    draw_set_color(c_black);
    draw_rectangle(box_left, box_top, box_right, box_bottom, false);

    draw_set_color(c_white);
    draw_rectangle(box_left + border, box_top + border,
                   box_right - border, box_bottom - border, false);

    draw_set_color(c_black);
    draw_rectangle(box_left + (border * 2), box_top + (border * 2),
                   box_right - (border * 2), box_bottom - (border * 2), false);

    // --- E) Draw sprite + text (full opacity)
    draw_set_alpha(1);

    // sprite position inside the centered box
    var spr_x = box_left + (border * 3);
    var spr_y = box_top  + (border * 3);

    if (current_dialogue.sprite != -1)
        draw_sprite(current_dialogue.sprite, 0, spr_x, spr_y);

    // text starts inside the centered box
    var text_x = box_left + padding;
    var text_y = box_top  + padding;

    if (current_dialogue.sprite != -1)
        text_x = box_left + sprite_get_width(current_dialogue.sprite) + (padding * 2);

    var text_w = (box_right - box_left) - (padding * 2);

    // keep extra room if sprite exists
    if (current_dialogue.sprite != -1)
        text_w = (box_right - box_left) - sprite_get_width(current_dialogue.sprite) - (padding * 3);

    draw_set_color(c_white);
    draw_text_ext(text_x, text_y, current_dialogue.message, 16, text_w);

    // your original fade-in value (kept)
    alpha = lerp(alpha, 1, 0.06);
}

// Always reset alpha
draw_set_alpha(1);


/// ----------------------------------------------------
/// 2) CHOICES (only when active && stage == 1)
/// ----------------------------------------------------
/// Choices should appear under the box (when it's drawn),
/// otherwise appear around mid-screen as a fallback.
if (active && stage == 1)
{
    var base_x = box_left + 30;

    // If dialogue box was just drawn, place choices below it.
    // Otherwise place choices near the middle.
    var base_y;

    if (box_height > 0)
    {
        var last_box_top = (gui_h * 0.5) - (box_height * 0.5);
        base_y = last_box_top + box_height + 12;
    }
    else
    {
        base_y = (gui_h * 0.5) + 40;
    }

    var line_h = 28;

    for (var c = 1; c <= 3; c++)
    {
        var key = string(c);
        var label = variable_struct_get(choices, key);

        if (c == selected_choice)
        {
            draw_set_color(c_yellow);
            draw_text(base_x, base_y + (c - 1) * line_h, "> " + label);
        }
        else
        {
            draw_set_color(c_white);
            draw_text(base_x, base_y + (c - 1) * line_h, "  " + label);
        }
    }
}