var map;
map = ds_map_create();
ds_map_add_list(map, TodoMap.list, ds_list_create());
map[? TodoMap.pos] = 0;
map[? TodoMap.delay] = 0;
map[? TodoMap.loop] = 0;
map[? TodoMap.signal] = 0;
map[? TodoMap.value] = 0;

return map;

enum Todo {
	spr,
	mainimg,
	subimg,
	imgspd,
	sleep,
	signal,
	send,
	sound,
	nope
}

enum TodoMap {
	list,
	pos,
	delay,
	loop,
	signal,
	value
}
