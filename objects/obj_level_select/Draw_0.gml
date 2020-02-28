/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

text = "";

switch(selector_size) {
	case MAP_SMALL: text = "SMALL";
	break;
	case MAP_MEDIUM: text = "MEDIUM";
	break;
	case MAP_BIG: text = "BIG";
	break;
}

draw_self();

draw_set_color(c_black);
draw_text(x, y, text);

draw_set_color(c_white);
