/// @description set_hex_move
/// @param movement

var movement = argument0;

var w = HEX_WIDTH;
var h = HEX_HEIGHT;

var hex1 = [];
var hex2 = [];
var hex3 = [];
var hex4 = [];
var hex5 = [];

if (cell_show = 1) {
	cell_show = 2;
	show_debug_message("MOV="+string(movement));
	if (movement >= 1) {
		hex1[0] = instance_create_layer(x, y-h*2, "Instances", obj_hex_move);
		
		hex1[1] = instance_create_layer(x+w, y-h, "Instances", obj_hex_move);
		hex1[2] = instance_create_layer(x+w, y+h, "Instances", obj_hex_move);
		
		hex1[3] = instance_create_layer(x, y+h*2, "Instances", obj_hex_move);
		
		hex1[4] = instance_create_layer(x-w, y+h, "Instances", obj_hex_move);
		hex1[5] = instance_create_layer(x-w, y-h, "Instances", obj_hex_move);
		
		var count = 0;
		repeat(array_length_1d(hex1)) {
			hex1[count].creator = id;
			show_debug_message("hex1["+string(count)+"].creator = "+string(id));
			count++;
		}
	} else exit;
	
	if (movement >= 2) {
		hex2[0] = instance_create_layer(x-w, y-h*3, "Instances", obj_hex_move);
		hex2[1] = instance_create_layer(x, y-h*4, "Instances", obj_hex_move);
		hex2[2] = instance_create_layer(x+w, y-h*3, "Instances", obj_hex_move);
		
		hex2[3] = instance_create_layer(x+w*2, y-h*2, "Instances", obj_hex_move);
		hex2[4] = instance_create_layer(x+w*2, y, "Instances", obj_hex_move);
		hex2[5] = instance_create_layer(x+w*2, y+h*2, "Instances", obj_hex_move);
		
		hex2[6] = instance_create_layer(x+w, y+h*3, "Instances", obj_hex_move);
		hex2[7] = instance_create_layer(x, y+h*4, "Instances", obj_hex_move);
		hex2[8] = instance_create_layer(x-w, y+h*3, "Instances", obj_hex_move);
		
		hex2[9] = instance_create_layer(x-w*2, y-h*2, "Instances", obj_hex_move);
		hex2[10] = instance_create_layer(x-w*2, y, "Instances", obj_hex_move);
		hex2[11] = instance_create_layer(x-w*2, y+h*2, "Instances", obj_hex_move);
		
		var count = 0;
		repeat(array_length_1d(hex2)) {
			hex2[count].creator = id;
			show_debug_message("hex2["+string(count)+"].creator = "+string(id));
			count++;
		}
	} else exit;
	
	if (movement >= 3) {
		hex3[0] = instance_create_layer(x-w*2, y-h*4, "Instances", obj_hex_move);
		hex3[1] = instance_create_layer(x-w, y-h*5, "Instances", obj_hex_move);
		hex3[2] = instance_create_layer(x, y-h*6, "Instances", obj_hex_move);
		hex3[3] = instance_create_layer(x+w, y-h*5, "Instances", obj_hex_move);
		hex3[4] = instance_create_layer(x+w*2, y-h*4, "Instances", obj_hex_move);
		
		hex3[5] = instance_create_layer(x+w*3, y-h*3, "Instances", obj_hex_move);
		hex3[6] = instance_create_layer(x+w*3, y-h, "Instances", obj_hex_move);
		hex3[7] = instance_create_layer(x+w*3, y+h, "Instances", obj_hex_move);
		hex3[8] = instance_create_layer(x+w*3, y+h*3, "Instances", obj_hex_move);
		
		hex3[9] = instance_create_layer(x+w*2, y+h*4, "Instances", obj_hex_move);
		hex3[10] = instance_create_layer(x+w, y+h*5, "Instances", obj_hex_move);
		hex3[11] = instance_create_layer(x, y+h*6, "Instances", obj_hex_move);
		hex3[12] = instance_create_layer(x-w, y+h*5, "Instances", obj_hex_move);
		hex3[13] = instance_create_layer(x-w*2, y+h*4, "Instances", obj_hex_move);
		
		hex3[14] = instance_create_layer(x-w*3, y+h*3, "Instances", obj_hex_move);
		hex3[15] = instance_create_layer(x-w*3, y+h, "Instances", obj_hex_move);
		hex3[16] = instance_create_layer(x-w*3, y-h, "Instances", obj_hex_move);
		hex3[17] = instance_create_layer(x-w*3, y-h*3, "Instances", obj_hex_move);
		
		var count = 0;
		repeat(array_length_1d(hex3)) {
			hex3[count].creator = id;
			show_debug_message("hex3["+string(count)+"].creator = "+string(id));
			count++;
		}
	} else exit;
	
	if (movement >= 4) {
	} else exit;
	
	if (movement >= 5) {
	} else exit;
}

if (cell_show = 2) {
	show_debug_message("SOMETHING");
	cell_show = 3;
}
