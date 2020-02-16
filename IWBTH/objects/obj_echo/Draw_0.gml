var a, s, c, f, p;
p = clamp(life_idx / life, 0, 1);
a = array_value(alpha, p);
s = array_value(scale, p);
c = array_value(color, p);
f = array_value(fade, p);

var xs, ys;
xs = image_xscale * s;
ys = image_yscale * s;

if !isno(c)
{
	var arr = coltodec(c);
	arr[3] = f;
	gpu_set_blendmode(bm_add);
	shader_set(shd_fade);
	
	var col = shader_get_uniform(shd_fade, "u_color");
	shader_set_uniform_f_array(col, arr);
}

draw_sprite_ext(sprite_index, image_index, x, y, xs, ys, image_angle, image_blend, a);

shader_reset();
gpu_set_blendmode(bm_normal);