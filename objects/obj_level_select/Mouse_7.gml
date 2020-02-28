/// @description Change variable

if variable_instance_exists(id, text) {
	show_debug_message("size" + text + string(selector_size));
}

global.game_map_size = selector_size;
room_goto(rom_terrain);
