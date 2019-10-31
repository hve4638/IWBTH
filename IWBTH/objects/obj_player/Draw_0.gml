var alpha, drawx, drawy;
drawx = floor(x);
drawy = floor(y);
alpha = image_alpha;

if 0 && 0 < kid_inv
	alpha *= 0.7;

draw_sprite_ext(sprite_index,image_index,drawx,drawy,image_xscale * look,image_yscale,image_angle,image_blend,alpha);