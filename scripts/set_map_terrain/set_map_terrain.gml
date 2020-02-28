/// @description set_map_terrain()
/// @param cx
/// @param cy
/// @param type_terrain

var cx = argument0;
var cy = argument1;
var type_terrain = argument2;

var grid_index = global.grid_terrain;

var str_terrain;

if real(type_terrain) {
	str_terrain = set_map_index(cx, cy, type_terrain);
} else {
	str_terrain = "00000000" + "00000000" + "00000000" + "00000000" +
		"00000000" + "00000000" + "00000000" + "00000000";
}

cx*=8;
cy*=8;

for(var gy = 0 ; gy <= 7 ; gy++) {
	for(var gx = 0 ; gx <= 7 ; gx++) {
		var str_index = gx+1 + (gy*8);
		grid_index[# cx+gx, cy+gy] = string_copy(str_terrain, str_index, 1);
		
		var num = instance_create_layer((cx+gx)*CELL_SIZE, (cy+gy)*CELL_SIZE, "Instances", obj_number);
		num.number = string(grid_index[# cx+gx, cy+gy]);
	}
}
