///@desc New Event
//draw_set_halign(fa_right);

//draw_text(win_w, 0, fps);
//draw_set_reset();

if 0 < intro_alpha
	draw_sprite_ext(intro_spr, 0, intro_x, intro_y, 1, 1, 0, c_white, intro_alpha);

if show_bosshp
{
	var _x, _y;
	var w, h;
	w = sprite_get_width(spr_healthbar);
	h = sprite_get_height(spr_healthbar);
	_x = view_w div 2 - w div 2;
	_y = view_h div 9
	
	draw_sprite(spr_healthbar, 0, _x, _y);
	draw_sprite_part(spr_healthbar, 1, 0, 0, w * bosshp, h, _x, _y);
}