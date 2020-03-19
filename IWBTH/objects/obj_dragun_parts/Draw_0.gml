var col = shader_get_uniform(sh_color, "u_color");

shader_set(sh_color);
	shader_set_uniform_f_array(col, [0.0, 0.0, 0.0, 1.0 - (showalpha * showalpha2)]);
	draw_self();
shader_reset();

if instance_exists(obj_dragun) && sprite_index == spr_dragun_head_idle 
	if obj_dragun.onrage
		draw_sprite_ext(spr_dragun_rageeye, -1, x, y, 2, 2, 0, c_white, obj_dragun.rage_alpha);