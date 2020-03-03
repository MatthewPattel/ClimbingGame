/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

tilemap = layer_tilemap_get_id(layer_get_id("Tiles_VOID"));

mode = "NORMAL";
spd = 1;

mask_visible = true;

hspd = 0;
hspd_f = 0;
hspd_final = 0;

vspd = 0;
vspd_f = 0;
vspd_final = 0;


sprite_bbox_left = sprite_get_bbox_left(spr_player_mask) - sprite_get_xoffset(spr_player_mask);
sprite_bbox_right = sprite_get_bbox_right(spr_player_mask) - sprite_get_xoffset(spr_player_mask);

sprite_bbox_bottom = sprite_get_bbox_bottom(spr_player_mask) - sprite_get_yoffset(spr_player_mask);
sprite_bbox_top = sprite_get_bbox_top(spr_player_mask) - sprite_get_yoffset(spr_player_mask);

grid_x = x div CELL_SIZE;
grid_y = y div CELL_SIZE;

show_debug_message("grid_x = " + string(grid_x));
show_debug_message("grid_y = " + string(grid_y));
