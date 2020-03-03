/// @description Move the camera

var view = view_camera[0];

camera_set_view_size(view, view_width, view_height);

if instance_exists(obj_player) {
	var cam_x = clamp(obj_player.x - view_width/2, 0, room_width-view_width);
	var cam_y = clamp(obj_player.y - view_height/2, 0, room_height-view_height);
	
	var cur_x = camera_get_view_x(view);
	var cur_y = camera_get_view_y(view);
	
	var cam_spd = .1;
	
	camera_set_view_pos(view, lerp(cur_x, cam_x, cam_spd), lerp(cur_y, cam_y, cam_spd));
}
