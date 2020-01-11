for(var i = 0; i < DragunParts.last; i++)
	with(arr_ins[i])
		enable = false;

if num >= 0
	with(arr_ins[num])
		enable = true;

for(var i = 0; i < DragunParts.last; i++)
{
	var ins = arr[i];
	ins.x = mainx + round(ins.setx) div gridint * gridint;
	ins.y = mainy + round(ins.sety) div gridint * gridint;	
}

var s = array_length_1d(map_ins);
for(var i = 0; i < s; i++)
{
	with(map_ins[i])
	{
		if object_index != obj_structbutton
		{
			cout_show("something wrong! ", object_get_name(object_index), i);
			break;	
		}
		enable = other.current_num == sendidx;
	}
}