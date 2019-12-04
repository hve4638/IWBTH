while(!ds_queue_empty(global.global_list))
{
	var idx = ds_queue_dequeue(global.global_list);
	if ds_exists(idx, ds_type_list)
		ds_list_destroy(idx);
}

while(!ds_queue_empty(global.global_map))
{
	var idx = ds_queue_dequeue(global.global_map);
	if ds_exists(idx, ds_type_map)
		ds_map_destroy(idx);
}

while(!ds_queue_empty(global.global_queue))
{
	var idx = ds_queue_dequeue(global.global_queue);
	if ds_exists(idx, ds_type_queue)
		ds_list_destroy(idx);
}

ds_queue_destroy(global.global_list);
ds_queue_destroy(global.global_map);
ds_queue_destroy(global.global_queue);