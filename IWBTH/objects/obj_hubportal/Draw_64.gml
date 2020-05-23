if show_info
{
	if 0 < show_alpha
	{
		var w, w1, w2;
		var h1, h3;
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
			draw_sprite_ext(spr_stagename_back, 0, w, h1, 1, 1, 0, c_white, show_alpha);
			draw_text_color(w, h1, name, c_white, c_white, c_white, c_white, show_alpha);
		}
		else
		{
			//draw_sprite_ext(spr_stagename_back, 0, w, h1, 1, 1, 0, c_white, show_alpha);
			//draw_text_color(w, h1, "???", c_white, c_white, c_white, c_white, show_alpha);
		}
		
	}
}
		draw_set_reset();