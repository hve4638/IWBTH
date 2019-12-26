if ds_map_exists(global.todolist, id)
	return global.todolist[? id];
else
	return NULL;