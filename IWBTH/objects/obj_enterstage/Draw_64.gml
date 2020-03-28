var w, w1, w2, w3;
var h1, h2, h3;
w = view_w div 2;
w1 = view_w div 3;
w2 = view_w div 4;
h1 = floor(view_h * 0.15);
h3 = floor(view_h * 0.82);
draw_set_font(font_perpetua_stage);
draw_set_color(c_white);
draw_set_alpha(1.0);
draw_set_halign(1);
draw_set_valign(1);

if isclear
{
	draw_sprite(spr_stagename_back, 0, w, h1);
	draw_text_color(w, h1, name, c_white, c_white, c_white, c_white, 1.0);
}
else
{
	draw_sprite(spr_stagename_back, 0, w, h1);
	draw_text_color(w, h1, "???", c_white, c_white, c_white, c_white, 1.0);
}

if enable_ascension
{
	draw_sprite(spr_stagename_back, 0, w2, h3);
	draw_set_color(select == 0 ? c_white : c_gray);
	draw_text(w2, h3, "Challenge");

	draw_sprite(spr_stagename_back, 0, w2 * 2, h3);
	draw_set_color(select == 1 ? c_white : c_gray);
	draw_text(w2 * 2, h3, "Attuned"); //Ascended

	draw_sprite(spr_stagename_back, 0, w2 * 3, h3);
	draw_set_color(select == 2 ? c_white : c_gray);
	draw_text(w2 * 3, h3, "Back");
}
else
{
	draw_sprite(spr_stagename_back, 0, w1, h3);
	draw_set_color(select == 0 ? c_white : c_gray);
	draw_text(w1, h3, "Challenge");

	draw_sprite(spr_stagename_back, 0, w1 * 2, h3);
	draw_set_color(select == 1 ? c_white : c_gray);
	draw_text(w1 * 2, h3, "Back");	
}

draw_set_reset();