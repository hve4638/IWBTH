instance_destroy(obj_structbutton);
map_ins = 0;
var cnt = array_length_1d(map_arr);
var h = room_width div 2;
var v = 32;

for(var i = 0; i < cnt; i++)
{
	var ins = instance_create_layer(h, v, L_SYS, obj_structbutton);
	with(ins)
	{
		x += (i - 1 - (cnt / 2)) * 16;
		sendto = other.id;
		sendidx = i;
	}
	
	map_ins[i] = ins;
}