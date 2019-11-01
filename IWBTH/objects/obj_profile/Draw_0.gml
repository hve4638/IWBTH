var w, h;
w = dw_w div 2;
h = dw_h div 2;
draw_set_font(font_perpetua);
draw_set_color(c_black);

draw_set_alpha(0.25);
draw_rectangle(dw_x - w, dw_y, dw_x + w, dw_y + dw_h, false);
draw_set_alpha(1.0);

var x1 = dw_x - dw_w div 2;
draw_text(x1 + 8, dw_y + 8, "SAVE " + string(number));
draw_text(x1 + 8 + 1, dw_y + 8, "SAVE " + string(number));
draw_text(x1 + 8, dw_y + 50, "  TIME: " + string(time_) + "   DEATH: " + string(death_));