var str = "SOUND TEST\n";

draw_set_font(-1);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
str += strmerge("current: ",sound_idx,"(", audio_get_name(sound_idx), ")");

draw_text_transformed(x, y, str, 1, 1, 0);