if ds_exists(global.todolist, ds_type_map) && ds_map_exists(global.todolist, id)
	ds_map_delete(global.todolist, id);