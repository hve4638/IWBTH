///@desc surface_edit_draw_self
var tx, ty;
tx = 0 < image_xscale ? sprite_xoffset * image_xscale : abs(sprite_width) - sprite_xoffset * image_xscale;
ty = 0 < image_yscale ? sprite_yoffset * image_yscale : abs(sprite_height) - sprite_yoffset * image_yscale;

gpu_set_blendmode(bm_normal);
draw_self_correction(tx, ty);