/// @description set_player_collision()
/// param type_terrain

var collision = false;

if (tilemap_get_at_pixel(tilemap, x + hspd + sign(hspd), y)) {
	x -= x mod CELL_SIZE;
	if (sign(hspd) == 1) x += CELL_SIZE - 1;
	hspd = 0;
	collision = true;
}

if (tilemap_get_at_pixel(tilemap, x, y + vspd + sign(vspd))) {
	y -= y mod CELL_SIZE;
	if (sign(vspd) == 1) y += CELL_SIZE - 1;
	vspd = 0;
	collision = true;
}

return collision;
