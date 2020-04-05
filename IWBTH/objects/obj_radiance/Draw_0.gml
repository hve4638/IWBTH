if sprite_index != -1
	draw_self();

if eyeshine_alpha > 0
{
	blendmode(bm_add);
	if eyeshine_type == 0
		draw_sprite_ext(spr_radiance_eyeshine, 0, x, y, 1, 1, 0, c_white, eyeshine_alpha * 0.7);
	else if eyeshine_type == 1
		draw_sprite_ext(spr_radiance_eyeshine_fall, 0, x, y, 1, 1, 0, c_white, eyeshine_alpha * 0.7);
	blendmode(bm_normal);
}