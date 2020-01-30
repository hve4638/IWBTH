if on_teleport
{
	if abs(sprite_height) <= 0 || abs(sprite_width) <= 0
		exit;
	
	var surf = surface_create(abs(sprite_width), abs(sprite_height));
	surface_set_target(surf);
		gpu_set_blendmode(bm_normal);
		surface_edit_draw_self();

		gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_src_alpha);
		for(var i = 0; i < abs(sprite_width); i+=2)
			draw_sprite(spr_phasing, 0, i, 0);

		gpu_set_blendmode(bm_normal);
	surface_reset_target();

	var tx, ty;
	tx = 0 < image_xscale ? sprite_xoffset * image_xscale : abs(sprite_width) - sprite_xoffset * image_xscale;
	ty = 0 < image_yscale ? sprite_yoffset * image_yscale : abs(sprite_height) - sprite_yoffset * image_yscale;

	draw_surface(surf, x - tx, y - ty);
	surface_free(surf);
}
else
	draw_self_correction();