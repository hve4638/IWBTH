if on_teleport
{
	if abs(sprite_height) <= 0 || abs(sprite_width) <= 0
		exit;

	var surf = surface_create(abs(sprite_width), abs(sprite_height));
	var tx, ty;
	tx = 0 < image_xscale ? sprite_xoffset * image_xscale : abs(sprite_width) - sprite_xoffset * image_xscale;
	ty = sprite_yoffset * image_yscale;
	surface_set_target(surf);
		gpu_set_blendmode(bm_normal);
		draw_self_correction(tx, ty);
		gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_src_alpha);
		for(var i = 0; i < abs(sprite_width); i+=2)
			draw_sprite(spr_phasing, 0, i, 0);
		gpu_set_blendmode(bm_normal);
	surface_reset_target();


	draw_surface(surf, x - tx, y - sprite_yoffset * image_yscale);
	surface_free(surf);
}
else draw_self_correction();