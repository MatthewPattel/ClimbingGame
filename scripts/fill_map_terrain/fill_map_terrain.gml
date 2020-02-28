/// @description fill_map_terrain()
/// @param map_terrain

var map_terrain = argument0;

var str_terrain;

show_debug_message("map_terrain: " + string(map_terrain));

switch(map_terrain) {
	case MAP_TERRAIN_TOP:
		str_terrain = set_grid_terrain_top();
	break;
	case MAP_TERRAIN_LEFT:
		str_terrain = set_grid_terrain_left();
	break;
	case MAP_TERRAIN_NORMAL:
		str_terrain = set_grid_terrain_normal();
	break;
	case MAP_TERRAIN_RIGHT:
		str_terrain = set_grid_terrain_right();
	break;
	case MAP_TERRAIN_LEFT_CORNER:
		str_terrain = set_grid_terrain_left_corner();
	break;
	case MAP_TERRAIN_RIGHT_CORNER:
		str_terrain = set_grid_terrain_right_corner();
	break;
	default:
		str_terrain = "00000000" + "00000000" + "00000000" + "00000000" +
		"00000000" + "00000000" + "00000000" + "00000000";
	break;
}

show_debug_message("str_terrain: " + string(str_terrain));

return str_terrain;
