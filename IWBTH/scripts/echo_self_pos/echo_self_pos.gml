///@param x
///@param y
///@param life
///@param alpha*
///@param color*
///@param fade*
var _x, _y;
var life, col, fade, alpha;
_x = argument[0];
_y = argument[1];
life = argument[2];
alpha = argument_count > 3 ? argument[3] : [image_alpha, 0];
col = argument_count > 4 ? argument[4] : no;
fade = argument_count > 5 ? argument[5] : 1.0;

var xs, ys;
xs = image_xscale;
ys = image_yscale;

if object_index == obj_player
	xs *= look

var ins = echo_create(life, depth+1, sprite_index, image_index, _x, _y, xs, ys, image_angle);
with(ins)
{
	onblend = true;
	blendtype = bm_add;
	self.alpha = alpha;

	if !isno(col)
	{
		shadertype = EchoShader.color;
		self.color = col;
		self.fade = fade;
	}
	else
	{
		shadertype = EchoShader.glow;
	}
}

return ins;