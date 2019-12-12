///@argu id
var map, list, pos, delay, loop, val, signal;
var ex;
map = argument[0];
list = map[? TodoMap.list];
pos = map[? TodoMap.pos];
delay = map[? TodoMap.delay];
loop = map[? TodoMap.loop];
val = map[? TodoMap.value];
signal = 0;

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
		
		case Todo.signal:
			signal = list[| pos++];
		break;
		
		case Todo.send:
			val = list[| pos++];
		break;
		
		case Todo.sound:
			sfx(list[| pos++]);
		break;
		
		default:
		break;
	}
}

map[? TodoMap.pos] = pos;
map[? TodoMap.delay] = delay;
map[? TodoMap.signal] = signal;
map[? TodoMap.value] = val;

return 0;