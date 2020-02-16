while(!ds_queue_empty(local_list))
{
	var idx = ds_queue_dequeue(local_list);
	if ds_exists(idx, ds_type_list)
		ds_list_destroy(idx);
}

while(!ds_queue_empty(local_map))
{
	var idx = ds_queue_dequeue(local_map);
	if ds_exists(idx, ds_type_map)
		ds_map_destroy(idx);
}

while(!ds_queue_empty(local_queue))
{
	var idx = ds_queue_dequeue(local_queue);
	if ds_exists(idx, ds_type_queue)
		ds_queue_destroy(idx);
}

while(!ds_queue_empty(local_grid))
{
	var idx = ds_queue_dequeue(local_grid);
	if ds_exists(idx, ds_type_grid)
		ds_grid_destroy(idx);
}

while(!ds_queue_empty(local_priority))
{
	var idx = ds_queue_dequeue(local_priority);
	if ds_exists(idx, ds_type_priority)
		ds_priority_destroy(idx);
}

ds_queue_destroy(local_list);
ds_queue_destroy(local_map);
ds_queue_destroy(local_queue);
ds_queue_destroy(local_priority);
ds_queue_destroy(local_grid);