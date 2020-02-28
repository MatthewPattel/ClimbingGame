/// @description set_index_value()
/// @param tile_index

var tile_index = argument0;
var index;

show_debug_message("tile_index: " + string(tile_index));

switch(string(tile_index)) {
	case "208": index = 1; break;
	case "214": index = 2; break;
	case "22": index = 3; break;
	case "16": index = 4; break;
	case "248": index = 5; break;
	case "255": index = 6; break;
	case "31": index = 7; break;
	case "24": index = 8; break;
	case "104": index = 9; break;
	case "107": index = 10; break;
	case "11": index = 11; break;
	case "8": index = 12; break;
	case "64": index = 13; break;
	case "66": index = 14; break;
	case "2": index = 15; break;
	case "0": index = 16; break;
	case "80": index = 17; break;
	case "86": index = 18; break;
	case "210": index = 19; break;
	case "18": index = 20; break;
	case "82": index = 21; break;
	case "120": index = 22; break;
	case "127": index = 23; break;
	case "251": index = 24; break;
	case "27": index = 25; break;
	case "123": index = 26; break;
	case "216": index = 27; break;
	case "223": index = 28; break;
	case "254": index = 29; break;
	case "30": index = 30; break;
	case "222": index = 31; break;
	case "72": index = 32; break;
	case "75": index = 33; break;
	case "106": index = 34; break;
	case "10": index = 35; break;
	case "74": index = 36; break;
	case "88": index = 37; break;
	case "95": index = 38; break;
	case "250": index = 39; break;
	case "26": index = 40; break;
	case "90": index = 41; break;
	case "219": index = 42; break;
	case "126": index = 43; break;
	case "218": index = 44; break;
	case "94": index = 45; break;
	case "122": index = 46; break;
	case "91": index = 47; break;
}

show_debug_message("index: " + string(index));

return index;
