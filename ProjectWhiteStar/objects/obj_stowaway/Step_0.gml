/// --- Swap sprite & update position based on state
if (state == "afar") {
    sprite_index = spr_CrazyGirlAfar;    // assigned per NPC
    x = x_default;
    y = y_afar;
} else if (state == "close") {
    sprite_index = spr_CrazyGirl;   // assigned per NPC
    x = x_default;
    y = y_close;
}

/// --- Hover detection
hovered = point_in_rectangle(
    mouse_x, mouse_y,
    x - sprite_get_width(sprite_index)/2,
    y - sprite_get_height(sprite_index)/2,
    x + sprite_get_width(sprite_index)/2,
    y + sprite_get_height(sprite_index)/2
);

/// --- Click detection to switch to "close"
if (state == "afar" && hovered && mouse_check_button_pressed(mb_left) && global.conversation == false) {
    state = "close";
	instance_create_layer(0, 0, "Instances", obj_crazygirl_convo)
	global.conversation = true;
}

/// --- Return to afar (simulate end of dialogue)
if (state == "close" && keyboard_check_pressed(vk_escape) && global.conversation == true) {
    state = "afar";
	global.conversation = false;
}
