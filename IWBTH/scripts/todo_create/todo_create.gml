var map;
map = ds_map_create();
//ds_map_add_list(map, TodoMap.list, ds_list_create());
map[? TodoMap.list] = ds_list_create();
map[? TodoMap.pos] = 0;
map[? TodoMap.delay] = 0;
map[? TodoMap.loop] = false;
map[? TodoMap.signal] = ds_queue_create();
map[? TodoMap.value] = ds_queue_create();

return map;

enum Todo {
	spr,
	mainimg,
	subimg,
	imgspd,
	sleep,
	signal,
	push,
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
