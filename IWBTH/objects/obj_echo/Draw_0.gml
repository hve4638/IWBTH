var a, s, c, f, p;
p = clamp(life_idx / life, 0, 1);
a = array_value(alpha, p);
s = array_value(scale, p);
c = array_value(color, p);
f = array_value(fade, p);

var xs, ys;
xs = image_xscale * s;
ys = image_yscale * s;


switch(shadertype)
{
case EchoShader.color:
	if isno(c)
		break;
	
	var arr = coltodec(c);
	arr[3] = f;
	shader_set(sh_color);
	
	var col = shader_get_uniform(sh_color, "u_color");
	shader_set_uniform_f_array(col, arr);
break;

case EchoShader.glow:
break;
}

if onblend
	gpu_set_blendmode(blendtype);

draw_sprite_ext(sprite_index, image_index, x, y, xs, ys, image_angle, image_blend, a);

if onblend
	gpu_set_blendmode(bm_normal);
shader_reset();