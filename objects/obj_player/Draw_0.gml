/// @description Draw sprite in 3d

if keyboard_check_released(ord("C")) {
	mask_visible = !mask_visible;
}
if (mask_visible) draw_sprite(spr_player_mask, 0, x, y);
draw_self_3d();
