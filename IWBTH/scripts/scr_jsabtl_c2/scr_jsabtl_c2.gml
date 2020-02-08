///@argu x
///@argu y
///@argu time
var xx = argument[0];
var yy = argument[1];
var t = argument[2];
var f = room_width div 2 > xx ? 0 : room_width;
var s = room_height div 2 > yy ? 1 : -1;

var ins = instance_create_layer(f, yy + s * irandom_range(48, 128), L_ABOVE, obj_jsabboom);
with(ins)
{
	life_create(t);

	on_to = true;
	tox = xx; 
	toy = yy;
	tospd = 9;
}

return ins;