var d = 0.25;

for (var i=0 ; i<image_number ; i+=d) {
	draw_sprite_ext(sprite_index, floor(i), x, y-i, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
