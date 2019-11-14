if instance_exists(obj_player)
{
	show_x = obj_player.x;
	show_y = obj_player.bbox_top - 16;
}

if 0<show_alpha
	draw_sprite_ext(spr_entertext, enteridx, show_x, show_y, 1, 1, 0, c_white, show_alpha);