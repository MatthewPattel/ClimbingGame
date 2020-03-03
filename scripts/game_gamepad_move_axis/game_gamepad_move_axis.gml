/// @description game_gamepad_move_axis()
/// @param axis_x
/// @param axis_y
/// @param key_x
/// @param key_y
/// @param threshold
/// @param spd

var axis_x = argument0;
var axis_y = argument1;
var key_x = argument2;
var key_y = argument3;
var threshold = argument4;
var spd = argument5;

var movement_x = false;
var movement_y = false;

var move_x = axis_x + key_x;

if (move_x > 1) move_x = 1;
if (move_x < -1) move_x = -1;

var move_y = axis_y + key_y;

if (move_y > 1) move_y = 1;
if (move_y < -1) move_y = -1;

// Secure movement when pressing key
if (key_x != 0) or (key_y != 0) {
	move_x = key_x;
	move_y = key_y;
}

var inputDirection = point_direction(0, 0, move_x, move_y);
var inputMagnitude = point_distance(0, 0, move_x, move_y);

hspd = lengthdir_x(inputMagnitude*spd, inputDirection)
vspd = lengthdir_y(inputMagnitude*spd, inputDirection);

//Collisions
set_player_collision();

// Move the character if possible

if (abs(move_x) >= threshold) {
	movement_x = true;
	x += hspd;
}

if (abs(move_y) >= threshold) {
	movement_y = true;
	y += vspd;
}

show_debug_message("move_x = " + string(move_x));
show_debug_message("move_y = " + string(move_y));

// Change image angle
if (movement_x or movement_y) image_angle = inputDirection;
