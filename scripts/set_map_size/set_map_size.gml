/// @description set_map_size()
/// @param map_terrain

var map_terrain = argument0;

var str_terrain;

switch(map_terrain) {
	case MAP_SMALL:
		str_terrain = 
		"000000000" +
		"000000000" +
		"000000000" +
		"000000000" +
		"000010000" +
		"000111000" +
		"000111000" +
		"001111100" +
		"001111100";
	break;
	case MAP_MEDIUM:
		str_terrain = 
		"000000000" +
		"000000000" +
		"000010000" +
		"000111000" +
		"001111100" +
		"001111100" +
		"011111110" +
		"011111110" +
		"011111110";
	break;
	case MAP_BIG:
		str_terrain = 
		"000010000" +
		"000111000" +
		"001111100" +
		"011111110" +
		"011111110" +
		"011111110" +
		"111111111" +
		"111111111" +
		"111111111";
	break;
}

return str_terrain;
