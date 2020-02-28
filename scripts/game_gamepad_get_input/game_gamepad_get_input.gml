/// @description game_gamepad_get_input()
/// @param device

var device = argument0;

if gamepad_is_connected(device) {
	axis_x = gamepad_axis_value(device, gp_axislh);
	axis_y = gamepad_axis_value(device, gp_axislv);
} else {
	axis_x = 0;
	axis_y = 0;
}

show_debug_message("axis_x = " + string(axis_x));
show_debug_message("axis_y = " + string(axis_y));
