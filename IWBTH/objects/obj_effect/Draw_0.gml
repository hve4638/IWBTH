var ex = sprite_ext();
var p = life_idx/(life+1);

if imagelifematch
	ex[Spr.img] = image_number * p;

if !isno(xscale)
	ex[Spr.xscale] = array_value(xscale, p);

if !isno(yscale)
	ex[Spr.yscale] = array_value(yscale, p);

if !isno(scale)
{
	var s = array_value(scale, p);
	ex[Spr.xscale] *= s;
	ex[Spr.yscale] *= s;
}

if !isno(alpha)
	ex[Spr.alpha] = array_value(alpha, p);

if !linear
	gpu_set_tex_filter(false);

gpu_set_blendmode(blend);

draw_sprite_array(ex);

gpu_set_blendmode(bm_normal);
gpu_set_tex_filter(true);