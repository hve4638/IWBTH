draw_set_halign(fa_center);
draw_set_color(c_black);
draw_set_font(font_perpetua);

draw_text(dw_x-1, dw_y, name);
draw_text(dw_x, dw_y, name);
draw_text(dw_x+1, dw_y, name);

draw_set_reset();