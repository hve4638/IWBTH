///@desc Only use global object
var loop, idx, nx;
var m = global.todolist;
if ds_map_empty(m)
	return 0;

loop = true;
idx = 0;
nx = ds_map_find_first(m);

while(loop)
{
	idx = nx;
	if ds_map_find_last(m) != nx
		nx = ds_map_find_next(m, nx);
	else
		loop = false;

	with(idx)
	{
		if todo_end(m[? idx])
			ds_map_delete(m, idx);
		else
			todo_act(m[? idx]);
	}
}

return 0;