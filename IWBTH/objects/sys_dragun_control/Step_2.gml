for(var i = 0; i < DragunParts.last; i++)
{
	var a = arr[i];
	with(arr_ins[i])
	{
		if a.lock
			enable = -1;
		else
			enable = 0;
	}
	
	with(arr[i])
	{
		image_alpha = lock ? 0.1 : 1;
	}
}

if num >= 0
	with(arr_ins[num])
	{
		
		if (other.arr[num]).lock
			enable = -2;
		else
			enable = true;
	}


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