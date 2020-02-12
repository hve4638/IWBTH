gpu_set_blendmode(bm_add);
if 0 <= color
	shader_set(shd_fade);

var a, xs, ys;
a = alpha;
xs = image_xscale * scale;
ys = image_yscale * scale;

if isfade
	a *= 1 - (life_idx / life);
var col = shader_get_uniform(shd_fade, "u_color");
shader_set_uniform_f_array(col, [1.0, 1.0, 1.0, a]);

draw_sprite_ext(sprite_index, image_index, x, y, xs, ys, image_angle, image_blend, a);

shader_reset();
gpu_set_blendmode(bm_normal);