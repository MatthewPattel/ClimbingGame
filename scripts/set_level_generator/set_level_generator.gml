/// @description set_level_generator()

var map_size = global.game_map_size;

/// Create level with determined size
randomize();

var map_width, map_height;

switch(map_size) {
	case MAP_SMALL:
		map_width = MAP_SMALL_WIDTH;
		map_height = MAP_SMALL_HEIGHT;
	break;
	case MAP_MEDIUM:
		map_width = MAP_MEDIUM_WIDTH;
		map_height = MAP_MEDIUM_HEIGHT;
	break;
	case MAP_BIG:
		map_width = MAP_BIG_WIDTH;
		map_height = MAP_BIG_HEIGHT;
	break;
}

/*
room_set_width(room, map_width * REGION_SIZE * CELL_SIZE);
room_set_height(room, map_height * REGION_SIZE * CELL_SIZE);
*/

global.map_index_ids = ds_map_create();
set_map_ids(global.map_index_ids);

// Get the tile layer map id
var tile_id_void = layer_tilemap_get_id("Tiles_VOID");
var tile_id_base = layer_tilemap_get_id("Tiles_BASE");
var tile_id_variant = layer_tilemap_get_id("Tiles_VARIANT");
var tile_id_special = layer_tilemap_get_id("Tiles_SPECIAL");
var tile_id_stone = layer_tilemap_get_id("Tiles_STONE");
var tile_id_water = layer_tilemap_get_id("Tiles_WATER");

// Set up grid
grid_width = (map_width * REGION_SIZE * CELL_SIZE) div CELL_WIDTH;
grid_height = (map_height * REGION_SIZE * CELL_SIZE) div CELL_HEIGHT;

grid_width = 72;
grid_height = 72;

// Set up the grid where every cell terrain is specified
global.grid_terrain = ds_grid_create(grid_width, grid_height);
ds_grid_set_region(global.grid_terrain, 0, 0, grid_width, grid_height, TERRAIN_VOID);

// Set up the grid where the 9x9 mountain is going to be defined (according to the size)
global.grid_map_terrain = ds_grid_create(9, 9);
ds_grid_set_region(global.grid_map_terrain, 0, 0, 9, 9, TERRAIN_VOID);

// Get mountain map preset from string
var str_map_terrain = set_map_size(map_size);

// Fill the mountain map with the preset information
for(var my = 0 ; my <= 8 ; my++) {
	for(var mx = 0 ; mx <= 8 ; mx++) {
		var str_index = mx+1 + (my*9);
		global.grid_map_terrain[# mx, my] = real(string_copy(str_map_terrain, str_index, 1));
	}
}

// Print each mountain map cell
for(var my = 0 ; my <= 8 ; my++) {
	for(var mx = 0 ; mx <= 8 ; mx++) {
		var str_index = mx+1 + (my*9);
		show_debug_message("grid_map_terrain" + string(global.grid_map_terrain[# mx, my]));
	}
}

// Fill each mountain map cell with an 8x8 preset
for(var cy = 0 ; cy <= 8 ; cy++) {
	for(var cx = 0 ; cx <= 8 ; cx++) {
		var type_terrain = global.grid_map_terrain[# cx, cy];
		set_map_terrain(cx, cy, type_terrain);
	}
}

#region //pruebas

/*
// Create the controller
var controller_x = 1; //grid_width div 2;
var controller_y = 1; //grid_height div 2;
var controller_dir = irandom(3);
var steps = 50;

var direction_change = 1;

repeat(steps) {
	grid_terrain[# controller_x, controller_y] = TERRAIN_EASY;
	
	// Randomize the direction
	if (irandom(direction_change) == direction_change) {
		controller_dir = irandom(3);
	}
	
	// Move the controller
	var dir_x = lengthdir_x(1, controller_dir * 90);
	var dir_y = lengthdir_y(1, controller_dir * 90);
	controller_x += dir_x;
	controller_y += dir_y;
	
	// Dont go outside the grid
	if (controller_x < 2 or controller_x >= grid_width - 2) {
		controller_x += -dir_x * 2;
	}
	if (controller_y < 2 or controller_y >= grid_height - 2) {
		controller_y += -dir_y * 2;
	}
}
var tile_north = grid_terrain[# cx, cy-1] == TERRAIN_VOID;
var tile_west = grid_terrain[# cx-1, cy] == TERRAIN_VOID;
var tile_east = grid_terrain[# cx+1, cy] == TERRAIN_VOID;
var tile_south = grid_terrain[# cx, cy+1] == TERRAIN_VOID;
			
var tile_index = NORTH*tile_north + WEST*tile_west + EAST*tile_east + SOUTH*tile_south + 1;
*/
#endregion

// Set the tile id for each grid terrain
for (var cy = 0 ; cy <= grid_height ; cy++) {
	for (var cx = 0 ; cx <= grid_width ; cx++) {
		if (global.grid_terrain[# cx, cy] != TERRAIN_VOID) {
			
			var tile_id, tile_index;
			
			tile_id = tile_id_base;
			tilemap_set(tile_id, 1, cx, cy);
			
			switch(global.grid_terrain[# cx, cy]) {
				case TERRAIN_BASE: tile_id = tile_id_base;
				break;
				case TERRAIN_VARIANT: tile_id = tile_id_variant;
				break;
				case TERRAIN_SPECIAL: tile_id = tile_id_special;
				break;
				case TERRAIN_WATER: tile_id = tile_id_water;
				break;
				case TERRAIN_STONE: tile_id = tile_id_stone;
				break;
			}
			
			tile_index = set_tile_index(cx, cy, true);
			show_debug_message(tile_index);
			tilemap_set(tile_id_base, real(tile_index), cx, cy);
			
			if (tile_id != tile_id_base) {
				tile_index = set_tile_index(cx, cy, false);
				show_debug_message(tile_index);
				tilemap_set(tile_id, real(tile_index), cx, cy);
			}
			//Secure snow in the tiles where	global.grid_terrain[# cx, cy] != 0
			//if (tile_id != tile_id_easy) { tilemap_set(tile_id_easy, 6, cx, cy); }
		}
	}
}
