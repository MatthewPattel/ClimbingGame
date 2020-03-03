/// @description Move

depth = -y;

if keyboard_check(ord("M")) {
	if mode = "NORMAL" {
		mode = "COLLISION"
	} else {
		mode = "NORMAL"
	}
}

key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);

key_x = key_right - key_left;
key_y = key_down - key_up;

game_gamepad_get_input(0);

grid_x = x div CELL_SIZE;
grid_y = y div CELL_SIZE;

var finalspd = spd;

switch(global.grid_terrain[# grid_x, grid_y]) {
	case TERRAIN_BASE:
		show_debug_message("SNOW");
		finalspd *= 0.60;
	break;
	case TERRAIN_VARIANT:
		show_debug_message("ROCK");
	break;
	case TERRAIN_SPECIAL:
		show_debug_message("WALL");
	break;
	case TERRAIN_WATER:
		show_debug_message("ICE");
		finalspd *= 1.25;
	break;
	case TERRAIN_STONE:
		show_debug_message("STONE");
	break;
}

game_gamepad_move_axis(axis_x, axis_y, key_x, key_y, .25, finalspd);


show_debug_message("grid_x = " + string(grid_x));
show_debug_message("grid_y = " + string(grid_y));
