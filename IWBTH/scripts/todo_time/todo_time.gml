///@argu id
var map, list, delay, pos;
map = argument[0];
list = map[? TodoMap.list];
pos = map[? TodoMap.pos];
delay = map[? TodoMap.delay];

while(pos < ds_list_size(list))
{
	switch(list[| pos++])
	{
		case Todo.spr:
			pos += 3;
		break;
		
		case Todo.mainimg:
		case Todo.imgspd:
		case Todo.subimg:
		case Todo.push:
			pos++;
		break;

		case Todo.sleep:
			delay += list[| pos++];
		break;
		
		default:
		break;
	}
}

return delay;