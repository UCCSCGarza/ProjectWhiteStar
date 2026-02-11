global.has_schematic = false;
global.player_alive = true;

global.current_area = "boiler";

load_area(global.current_area);

global.clues = {
	hull_number_mismatch: false,
	stowaway_saw_switch: false
};