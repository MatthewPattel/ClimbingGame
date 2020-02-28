/// @description set_tile_index()
/// @param cx
/// @param cy
/// @param type_terrain

//Returns the tile index after checking all 8 positions around the tile. Includes corners.

var tile_north, tile_south, tile_west, tile_east;
var tile_north_east, tile_north_west, tile_south_west, tile_south_east;
var map_index, grid_index;
var map_terrain;
var cx, cy;
var type_terrain;

cx = argument0;
cy = argument1;

type_terrain = argument2;

map_index = global.map_index_ids;

grid_index = global.grid_map_terrain;

//Directional Check, including corners, returns Boolean
tile_north = grid_index[# cx, cy-1] == type_terrain;
tile_south = grid_index[# cx, cy+1] == type_terrain;
tile_west = grid_index[# cx-1, cy] == type_terrain;
tile_east = grid_index[# cx+1, cy] == type_terrain;

tile_north_west = grid_index[# cx-1, cy-1] == type_terrain && tile_north && tile_west;
tile_north_east = grid_index[# cx+1, cy-1] == type_terrain && tile_north && tile_east;
tile_south_west = grid_index[# cx-1, cy+1] == type_terrain && tile_south && tile_west;
tile_south_east = grid_index[# cx+1, cy+1] == type_terrain && tile_south && tile_east;

show_debug_message("cx" + string(cx));
show_debug_message("cy" + string(cy));
show_debug_message("tile_north" + string(tile_north));

//map_terrain = MAP_TERRAIN_TOP;

if (tile_north) {
	map_terrain = MAP_TERRAIN_NORMAL;
	if (tile_west and !tile_east) {
		map_terrain = MAP_TERRAIN_RIGHT;
	}
	if (!tile_west and tile_east) {
		map_terrain = MAP_TERRAIN_LEFT;
	}
} else {
	if (tile_west) {
		map_terrain = MAP_TERRAIN_RIGHT_CORNER;
	} else if (tile_east) {
		map_terrain = MAP_TERRAIN_LEFT_CORNER;
	} else {
		map_terrain = MAP_TERRAIN_TOP;
	}
}

// take the previously calculated value and find the relevant value in the data structure to remove redundancies
//var final_index  = ds_map_find_value(map_index,string(tile_index));
var final_index = fill_map_terrain(map_terrain);

return final_index;
