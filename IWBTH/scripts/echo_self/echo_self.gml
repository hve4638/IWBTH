///@param life
///@param alpha*
///@param color*
///@param fade*
var life, col, fade, alpha;
life = argument[0];
alpha = argument_count > 1 ? argument[1] : [image_alpha, 0];
col = argument_count > 2 ? argument[2] : no;
fade = argument_count > 3 ? argument[3] : 1.0;

var ins = echo_self_pos(x, y, life, alpha, col, fade);
return ins;
/*
var xs, ys;
xs = image_xscale;
ys = image_yscale;

if object_index == obj_player
	xs *= look

var ins = echo_create(life, depth+1, sprite_index, image_index, x, y, xs, ys, image_angle);
with(ins)
{
	self.color = col;
	self.fade = fade;
	self.alpha = alpha;
}

return ins;