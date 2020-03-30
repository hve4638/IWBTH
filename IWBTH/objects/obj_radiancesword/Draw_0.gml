var sprext = sprite_ext();

sprext[1] = 0;
draw_sprite_array(sprext);

gpu_set_blendmode(bm_add);
	sprext[1] = 1;
	sprext[8] = 0.3;
	draw_sprite_array(sprext);

if time_idx <= create_time
{
	sprext[1] = 2;
	sprext[8] = array_value(glow_alpha, time_idx/create_time);
	draw_sprite_array(sprext);
}
gpu_set_blendmode(bm_normal);