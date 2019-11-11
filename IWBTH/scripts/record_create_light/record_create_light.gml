var record;

record = ds_map_create();
record[? Record.target] = noone;
record[? Record.type] = RecordType.queue;
record[? Record.index] = 0;
ds_map_add(record, Record.state, ds_queue_create());
ds_map_add(record, Record.x, ds_queue_create());
ds_map_add(record, Record.y, ds_queue_create());
ds_map_add(record, Record.rm, ds_queue_create());
ds_map_add(record, Record.sprite, ds_queue_create());
ds_map_add(record, Record.subimg, ds_queue_create());
ds_map_add(record, Record.xscale, ds_queue_create());
ds_map_add(record, Record.yscale, ds_queue_create());
ds_map_add(record, Record.rot, ds_queue_create());
ds_map_add(record, Record.col, ds_queue_create());
ds_map_add(record, Record.alpha, ds_queue_create());

return record;