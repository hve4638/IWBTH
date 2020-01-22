draw_set_color(c_black);
draw_set_alpha(fade_a);
draw_rectangle(0,0,view_w,view_h,false);

draw_set_reset();

var w, h;
w = view_w div 2;
h = 160 + 32;
draw_sprite_ext(spr_stageclear, 0, w, h, 1.0, 1.0, 0, c_white, clear_alpha);
draw_sprite_ext(spr_stageclear, 1, w, h, 1.0, 1.0, 0, c_white, clear_alpha2);

draw_set_font(font_perpetua);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

var str;
w = view_w div 2;
h = view_h * 3 div 5;
str = strmerge("TIME ", stime, NL, "DEATH ", sdeath);
draw_text_color(w, h, str, c_white, c_white, c_white, c_white, sub_alpha);

draw_set_reset();