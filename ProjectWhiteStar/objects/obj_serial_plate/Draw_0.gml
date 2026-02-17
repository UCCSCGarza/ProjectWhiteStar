// draw normally
draw_sprite(sprite_index, 0, x, y);

// highlight overlay if hovered
if (hovered && !global.viewing_plate)
{
    draw_set_alpha(0.4);
    draw_set_color(c_yellow);
    draw_sprite_ext(sprite_index, 0, x, y, 1.1, 1.1, 0, c_yellow, 1);
    draw_set_alpha(1);
    draw_set_color(c_white);
}
