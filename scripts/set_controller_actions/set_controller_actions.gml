/// @description controller_actions()

if keyboard_check_released(vk_escape) {
	if ds_exists(global.grid_terrain, ds_type_grid) { ds_grid_destroy(global.grid_terrain); }
	if ds_exists(global.grid_map_terrain, ds_type_grid) { ds_grid_destroy(global.grid_map_terrain); }
	if ds_exists(global.map_index_ids, ds_type_map) { ds_map_destroy(global.map_index_ids); }
	game_end();
}

if keyboard_check_released(ord("R")) {
	game_restart();
}

if keyboard_check_released(vk_f11) {
	window_set_fullscreen(!window_get_fullscreen());
}

if keyboard_check_released(ord("V")) {
	if instance_exists(obj_number) {
		obj_number.visible = !obj_number.visible;
	}
}
