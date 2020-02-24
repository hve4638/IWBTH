if abs(sprite_height) <= 0 || abs(sprite_width) <= 0
	exit;

var surf = surface_create(abs(sprite_width), abs(sprite_height));
surface_set_target(surf);
	gpu_set_blendmode(bm_normal);
	var a = surface_edit_draw_self();
	
	gpu_set_colorwriteenable(1,1,1,0);
	
	draw_sprite(spr_ignisfire, fireimage, a[0], a[1]);
	
	gpu_set_colorwriteenable(1,1,1,1);
surface_reset_target();

var tx, ty;
tx = 0 < image_xscale ? sprite_xoffset * image_xscale : abs(sprite_width) - sprite_xoffset * image_xscale;
ty = 0 < image_yscale ? sprite_yoffset * image_yscale : abs(sprite_height) - sprite_yoffset * image_yscale;

draw_self_correction();
draw_surface_ext(surf, x - tx, y - ty, 1, 1, 0, c_white, 0.35);
surface_free(surf);

fireimage ++;