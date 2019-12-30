if !show
	exit;

var w, h;
w = win_w div 2;
h = win_h div 2;

draw_sprite_ext(spr_gameover, 0, w, h, 1.0, 1.0, 0, c_white, show_alpha);