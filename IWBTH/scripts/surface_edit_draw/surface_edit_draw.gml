///@desc surface_edit_sprite
///@argu sprite
///@argu subimg
///@argu xscale
///@argu yscale
///@argu rot
///@argu col
///@argu alpha
var surf, spr, img, xs, ys, r, c, a;
surf = surface_get_target();
spr = argument[0];
img = argument[1];
xs = argument[2];
ys = argument[3];
r = argument[4];
c = argument[5];
a = argument[6];

var sw, sh;
var tx, ty;
sw = abs(sprite_get_width(spr) * xs);
sh = abs(sprite_get_height(spr) * ys);
tx = (0 < xs) ? (sprite_get_xoffset(spr) * xs) : sw - abs(sprite_get_xoffset(spr) * xs);
ty = (0 < ys) ? (sprite_get_yoffset(spr) * ys) : sh - abs(sprite_get_yoffset(spr) * ys);

draw_sprite_ext(spr, img, tx, ty, xs, ys, r, c, a);
return [tx, ty];

//draw_surface(surf, x - tx, y - sprite_yoffset * image_yscale);
//surface_free(surf);
/*
	gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_src_alpha);
	for(var i = 0; i < abs(sprite_width); i+=2)
		draw_sprite(spr_phasing, 0, i, 0);
	gpu_set_blendmode(bm_normal);
*/