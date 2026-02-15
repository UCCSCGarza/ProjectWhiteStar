// Draw NPC normally
draw_sprite(sprite_index, 0, x, y);

// Draw outline if hovered and afar
if (hovered && state == "afar") {
    draw_set_color(c_yellow);
    draw_set_alpha(0.5);
    
    // Draw the sprite slightly bigger behind
    var outline_scale = 1.1; // 10% bigger, adjust as needed
    draw_sprite_ext(sprite_index, 0, x, y, outline_scale, outline_scale, 0, c_yellow, 1);
    
    draw_set_alpha(1);
    draw_set_color(c_white);
}
