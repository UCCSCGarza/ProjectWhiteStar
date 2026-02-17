// Game state
global.has_schematic = false;
global.player_alive = true;
global.journal = false;

//Adding a flag to see how many times you meet with npc
global.rich_met = false;
//Adding a flag to make sure you have bottle to give to "Jimmy"
global.has_bottle = false;
global.jimmy_trust = false;
global.jimmy_state = 0;
global.found_serial = false;
global.viewing_plate = false;
global.has_captain_key = false;
global.jenny_state = 0;
global.has_journal = false;
global.engineer_met = false;
global.has_schematic = false;
global.captain_state = 0;
// Current room
global.current_area = "boiler";
load_area(global.current_area);

// Clues
global.clues = {
    hull_number_mismatch: false,
    stowaway_saw_switch: false
};

audio_play_sound(snd_mainmusic, 1, true);

// Minimap
map_open = false;
map_sprite = spr_minimap_ship;
map_scale = 0.35;

// Button sprite
button_sprite = spr_minimap_button;
button_sprite_size = 64;  // original sprite size in pixels

// Define buttons
var map_w = sprite_get_width(map_sprite);
var map_h = sprite_get_height(map_sprite);

map_buttons = [
    { name: "captain", x: map_w - 40, y: 40 },         // top-right
    { name: "hidden",  x: 40,       y: 40 },           // top-left
    { name: "boiler",  x: map_w - 40, y: map_h - 40 }, // bottom-right
    { name: "dining",  x: 40,       y: map_h - 40 }    // bottom-left
];
