///@argu todo
var map, list, pos;
var todolog = ds_list_create();
map = argument[0];
list = map[? TodoMap.list];
pos = 0;

while(true)
{
	if pos >= ds_list_size(list)
		break;

	var ex = list[| pos++];
	switch(ex)
	{
		case Todo.spr:
			ds_list_add(todolog, "sprite");
			ds_list_add(todolog, sprite_get_name(list[| pos++]));
			ds_list_add(todolog, list[| pos++]);
			ds_list_add(todolog, list[| pos++]);
		break;

		case Todo.mainimg:
			ds_list_add(todolog, "main img");
			ds_list_add(todolog, list[| pos++]);
		break;

		case Todo.subimg:
			ds_list_add(todolog, "subimg");
			ds_list_add(todolog, list[| pos++]);
		break;
	
		case Todo.imgspd:
			ds_list_add(todolog, "img speed");
			ds_list_add(todolog, list[| pos++]);
		break;

		case Todo.sleep:
			ds_list_add(todolog, "delay");
			ds_list_add(todolog, list[| pos++]);
		break;
		
		case Todo.push:
			var value = list[| pos++];
			ds_list_add(todolog, "push");
			ds_list_add(todolog, value);
			repeat(value)
				ds_list_add(todolog, list[| pos++]);
		break;
		
		case Todo.signal:
			var value = list[| pos++];
			ds_list_add(todolog, "signal");
			ds_list_add(todolog, value);
			repeat(value)
				ds_list_add(todolog, list[| pos++]);
		break;
		
		case Todo.sound:
			ds_list_add(todolog, "sound");
			ds_list_add(todolog, list[| pos++]);
		break;
		
		case Todo.nope:
			ds_list_add(todolog, "nope");
		break;
	}
	cout("todo debug: ", pos);
}
cout("tododebug end!");
return todolog;