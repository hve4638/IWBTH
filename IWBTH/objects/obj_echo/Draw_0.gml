if 0 <= color
	gpu_set_fog(1,color,0,0);

var a, xs, ys;
a = alpha;
xs = image_xscale * scale;
ys = image_yscale * scale;

if isfade
	a *= 1 - (life_idx / life);

draw_sprite_ext(sprite_index, image_index, x, y, xs, ys, image_angle, image_blend, a);

gpu_set_fog(0,0,0,0);