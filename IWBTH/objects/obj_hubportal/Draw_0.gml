if show_holo
{
	var w, h, s;
	w = (bbox_right - bbox_left);
	h = sprite_get_bbox_bottom(holo_spr);

	if !surface_exists(holo_surf)
	{
		var bt;
		bt = sprite_get_bbox_top(holo_spr);
		
		s = surface_create(w, h);
		
		surface_set_target(s);
			draw_sprite(holo_spr, 0, w div 2, sprite_get_yoffset(holo_spr));
			gpu_set_colorwriteenable(1, 1, 1, 0);
			draw_rectangle_color(0, bt, w div 2, h, c_white, c_white, c_black, c_black, 0);
			draw_rectangle_color(w div 2, bt, w, h, c_white, c_white, c_black, c_black, 0);
			gpu_set_colorwriteenable(1, 1, 1, 1);
		surface_reset_target();
		
		
		var o = shader_get_uniform(sh_convertalpha, "outputcolor");
		shader_set_uniform_f_array(o, [1.0, 1.0, 1.0]);

		holo_surf = surface_create(w, h);

		surface_set_target(holo_surf);
			shader_set(sh_convertalpha);
				draw_surface(s, 0, 0);
			shader_reset();

			if isclear
			{
				gpu_set_colorwriteenable(1, 1, 1, 0);
				draw_sprite(holo_spr, 0, w div 2, sprite_get_yoffset(holo_spr));
				gpu_set_colorwriteenable(1, 1, 1, 1);
			}
		surface_reset_target();
		
		surface_free(s);
	}
	
	var a;
	
	if isclear
		a = random_range(0.15, 0.20) * (show_alpha * 2 + 1);
	else
		a = random_range(0.08, 0.1) * (show_alpha * 1.5 + 1)
	draw_surface_ext(holo_surf, bbox_left, bbox_bottom - 16 - h, 1, 1, 0, c_white, a);
}

if instance_exists(obj_player)
{
	var xx, yy;
	xx = obj_player.x;
	yy = obj_player.bbox_top - 16;

	if 0 < show_alpha
		draw_sprite_ext(spr_entertext, text_idx, xx, yy, 1, 1, 0, c_white, show_alpha);
}
		draw_set_reset();