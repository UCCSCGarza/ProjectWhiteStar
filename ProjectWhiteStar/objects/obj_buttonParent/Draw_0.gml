// Draw the button sprite
draw_self();

// Set text properties
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_font(font_menu);

// Draw text centered on the button

if (hovering)
    draw_set_color(c_white);
else
    draw_set_color(c_black);

draw_text(x, y, text);