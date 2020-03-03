/// @description Creation variables

view_width = 1024/2;
view_height = 768/2;

window_scale = 3;

var resize_width = view_width*window_scale;
var resize_height = view_height*window_scale;

resize_width = 1152;
resize_height = 780;

window_set_size(resize_width, resize_height);
alarm[0] = 1;

surface_resize(application_surface, resize_width, resize_height);
