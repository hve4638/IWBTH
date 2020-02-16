///@desc w
///@desc h
var idx = ds_grid_create(argument[0], argument[1]);

ds_queue_enqueue(local_grid, idx);
return idx;