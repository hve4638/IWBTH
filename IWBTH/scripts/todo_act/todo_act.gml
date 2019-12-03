///@argu id
var arr, list, pos, delay, loop;
var idx, ex;
arr = argument[0];
list = arr[@ 0];
pos = arr[@ 1];
delay = arr[@ 2];
loop = arr[@ 3];

while(true)
{
	if 0 < delay
	{
		delay--;
		break;
	}

	if pos+1 >= ds_list_size(list)
	{
		if loop
			pos = 0;
		else
			break;
	}
	ex = list[| pos++];
	idx = list[| pos++];

	switch(ex)
	{
		case Todo.spr:
			sprite_index = idx;
		break;

		case Todo.img:
			image_index = idx;
		break;
	
		case Todo.imgspd:
			image_speed = idx;
		break;

		case Todo.sleep:
			delay = idx;
		break;
	}
}

arr[@ 1] = pos;
arr[@ 2] = delay;

return 0;