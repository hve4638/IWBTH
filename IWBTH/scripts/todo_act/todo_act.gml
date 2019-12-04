///@argu id
var arr, list, pos, delay, loop;
var ex;
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

	if pos >= ds_list_size(list)
	{
		if loop
			pos = 0;
		else
			break;
	}
	ex = list[| pos++];

	switch(ex)
	{
		case Todo.spr:
			sprite_index = list[| pos++];
			image_index = list[| pos++];
			image_speed = list[| pos++];
		break;

		case Todo.mainimg:
			sprite_index = list[| pos++];
		break;

		case Todo.subimg:
			image_index = list[| pos++];
		break;
	
		case Todo.imgspd:
			image_speed = list[| pos++];
		break;

		case Todo.sleep:
			delay = list[| pos++];
		break;
	}
}

arr[@ 1] = pos;
arr[@ 2] = delay;

return 0;