if instance_exists(obj_player)
{
	var xx, yy;
	xx = obj_player.x;
	yy = obj_player.bbox_top - 16;

	if 0 < show_alpha
		draw_sprite_ext(spr_entertext, 0, xx, yy, 1, 1, 0, c_white, show_alpha);
}