global.has_schematic = false;
global.player_alive = true;

global.current_area = "captain";
load_area(global.current_area);

global.clues = {
    hull_number_mismatch: false,
    stowaway_saw_switch: false
};

map_open = false;
map_sprite = spr_minimap_ship;
map_scale = 0.35;

// Use sprite dimensions, not scaled
var map_w = sprite_get_width(map_sprite);
var map_h = sprite_get_height(map_sprite);

map_buttons = [
    { name: "captain", x: map_w - 40, y: 40 },  // top-right
    { name: "hidden",  x: 40,       y: 40 },    // top-left
    { name: "boiler",  x: map_w - 40, y: map_h - 40 }, // bottom-right
    { name: "dining",  x: 40,       y: map_h - 40 }    // bottom-left
];

