/// @description State machine

/*
switch(state) {
	case player.nothing:
		with (obj_hex_move) { if (creator == other.id) { instance_destroy(); } }
		cell_show = 0;
	break;
	case player.movement:
		if (cell_show == 0) { cell_show = 1; }
		set_hex_move(move_range);
	break;
}


if (keyboard_check_released(ord("S"))) {
	switch(state) {
		case player.nothing:
			state = player.movement;
		break;
		case player.movement:
			state = player.nothing;
		break;
	}
	show_debug_message("STATE="+string(state));
}

if (keyboard_check_released(ord("0"))) {
	move_range = 0;
	show_debug_message("MOVE_RANGE="+string(move_range));
}
if (keyboard_check_released(ord("1"))) {
	move_range = 1;
	show_debug_message("MOVE_RANGE="+string(move_range));
}
if (keyboard_check_released(ord("2"))) {
	move_range = 2;
	show_debug_message("MOVE_RANGE="+string(move_range));
}
if (keyboard_check_released(ord("3"))) {
	move_range = 3;
	show_debug_message("MOVE_RANGE="+string(move_range));
}
