///@argu id
var map, list, pos, delay, loop, val, signal;
map = argument[0];
list = map[? TodoMap.list];
pos = map[? TodoMap.pos];
delay = map[? TodoMap.delay];
loop = map[? TodoMap.loop];
val = map[? TodoMap.value];
signal = map[? TodoMap.signal];

var ex;
var on = true;

if 0 < delay
	delay--;
else while(on)
{
	if pos >= ds_list_size(list)
		break;

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
			on = false;
		break;
		
		case Todo.push:
			repeat(list[| pos++])
				ds_queue_enqueue(val, list[| pos++]);
		break;
		
		case Todo.signal:
			repeat(list[| pos++])
				ds_queue_enqueue(signal, list[| pos++]);
		break;
		
		case Todo.sound:
			sfx(list[| pos++]);
		break;
		
		case Todo.nope:
			on = false;
		break;
	}
}

map[? TodoMap.pos] = pos;
map[? TodoMap.delay] = delay;

return 0;