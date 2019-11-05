var alpha, drawx, drawy, xscale;
drawx = floor(x);
drawy = floor(y);
alpha = image_alpha;
xscale = image_xscale * look;

if 0 < dashtime
	alpha *= 0.7;

draw_sprite_ext(sprite_index,image_index,drawx,drawy,xscale,image_yscale,image_angle,image_blend,alpha);
