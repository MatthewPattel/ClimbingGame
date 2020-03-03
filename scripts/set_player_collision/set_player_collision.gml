/// @description set_player_collision()
/// param type_terrain

var collision = false;

var value = 0;

var hextra = sign(hspd)*value;
var vextra = sign(vspd)*value;

//if (hspd != 0) { if (hspd > 0) hextra = value; else hextra = value*-1; }

if (tilemap_get_at_pixel(tilemap, x + hspd + sign(hspd) + hextra, y)) {
	x -= (x mod CELL_SIZE) - (value);
	if (sign(hspd) == 1) x += (CELL_SIZE - 1) + (value);
	hspd = 0;
	collision = true;
}

//if (vspd != 0) { if (vspd > 0) vextra = value; else vextra = value*-1; }

if (tilemap_get_at_pixel(tilemap, x, y + vspd + sign(vspd) + vextra)) {
	y -= (y mod CELL_SIZE) - (value);
	if (sign(vspd) == 1) y += (CELL_SIZE - 1) + (value);
	vspd = 0;
	collision = true;
}

return collision;
