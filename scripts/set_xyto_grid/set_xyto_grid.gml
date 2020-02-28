/// @description set_xyto_grid()

/*
var xInitial = X_INITIAL;
var yInitial = Y_INITIAL;

var hexWidth = HEX_WIDTH;
var hexHeight = HEX_HEIGHT;

var gridWidth = GRID_WIDTH;
var gridHeight = GRID_HEIGHT;
*/

for (var cx = 0 ; cx < GRID_WIDTH ; cx++) {
	if (x == X_INITIAL + (HEX_WIDTH*cx)) {
		gx = cx + 1;
		show_debug_message("GX="+string(gx));
		break;
	}
}

for (var cy = 0 ; cy < GRID_HEIGHT ; cy++) {
	if (y == Y_INITIAL + (HEX_HEIGHT*cy)) {
		gy = cy + 1;
		show_debug_message("GY="+string(gy));
		break;
	}
}