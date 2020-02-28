/// @description set_tile_index()
/// @param cx
/// @param cy
/// @param terrain_easy_boolean

//Returns the tile index after checking all 8 positions around the tile. Includes corners.

var tile_north, tile_south, tile_west, tile_east;
var tile_north_east, tile_north_west, tile_south_west, tile_south_east;
var map_index, grid_index, tile_index;
var cx, cy;
var terrain_easy_boolean;
var type_terrain;

cx = argument0;
cy = argument1;
terrain_easy_boolean = argument2;

map_index = global.map_index_ids;
grid_index = global.grid_terrain;
type_terrain = global.grid_terrain[# cx, cy];

//Directional Check, including corners, returns Boolean
switch(terrain_easy_boolean) {
	case true:
		tile_north = grid_index[# cx, cy-1] != 0;
		tile_south = grid_index[# cx, cy+1] != 0;
		tile_west = grid_index[# cx-1, cy] != 0;
		tile_east = grid_index[# cx+1, cy] != 0;

		tile_north_west = grid_index[# cx-1, cy-1] != 0 && tile_north && tile_west;
		tile_north_east = grid_index[# cx+1, cy-1] != 0 && tile_north && tile_east;
		tile_south_west = grid_index[# cx-1, cy+1] != 0 && tile_south && tile_west;
		tile_south_east = grid_index[# cx+1, cy+1] != 0 && tile_south && tile_east;
	break;
	case false:
		tile_north = grid_index[# cx, cy-1] == type_terrain;
		tile_south = grid_index[# cx, cy+1] == type_terrain;
		tile_west = grid_index[# cx-1, cy] == type_terrain;
		tile_east = grid_index[# cx+1, cy] == type_terrain;

		tile_north_west = grid_index[# cx-1, cy-1] == type_terrain && tile_north && tile_west;
		tile_north_east = grid_index[# cx+1, cy-1] == type_terrain && tile_north && tile_east;
		tile_south_west = grid_index[# cx-1, cy+1] == type_terrain && tile_south && tile_west;
		tile_south_east = grid_index[# cx+1, cy+1] == type_terrain && tile_south && tile_east;
	break;
}

//8 bit Bitmasking calculation using Directional check booleans values
tile_index = 
	NORTH_WEST*tile_north_west + NORTH*tile_north + NORTH_EAST*tile_north_east +
	WEST*tile_west + EAST*tile_east +
	SOUTH_WEST*tile_south_west + SOUTH*tile_south + SOUTH_EAST*tile_south_east + 0;

// take the previously calculated value and find the relevant value in the data structure to remove redundancies
//var final_index  = ds_map_find_value(map_index,string(tile_index));
var final_index = set_index_value(tile_index);

return final_index;
