///@argu ins
var ins = argument[0];
var arr;
var w, xx, yy;

if !instance_exists(ins)
	return 0;

xx = (ins.bbox_left + ins.bbox_right) div 2;
yy = ins.bbox_top;
w = (ins.bbox_right - ins.x);
arr = [];

var i;
var n = 0;
for(i = 0; i <= w; i += 22)
{
	ins = instance_create_layer(xx + i, yy, L_PLAYER, obj_radiancetrap_ready);
	with(ins)
	{
		on_time = 100;
		off_time = on_time + 50 * 5;
		life_create(off_time + 15);
	}
	arr[n++] = ins;
	
	ins = instance_create_layer(xx - i, yy, L_PLAYER, obj_radiancetrap_ready);
	with(ins)
	{
		on_time = 100;
		off_time = on_time + 50 * 5;
		life_create(off_time + 15);
	}
	arr[n++] = ins;
}

return arr;