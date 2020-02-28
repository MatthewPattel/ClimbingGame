/// @description Draw number

draw_set_color(c_black);
draw_set_font(fnt_little);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var diff = CELL_SIZE/2;
//draw_text(x+diff, y+diff, number);

draw_line(x-8, y-1, x+8, y-1);
draw_line(x-1, y-8, x-1, y+8);

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
