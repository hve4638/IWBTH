var record;

record = ds_map_create();
record[? Record.target] = noone;
record[? Record.type] = RecordType.list;
record[? Record.index] = 0;
ds_map_add_list(record, Record.state, ds_list_create());
ds_map_add_list(record, Record.x, ds_list_create());
ds_map_add_list(record, Record.y, ds_list_create());
ds_map_add_list(record, Record.rm, ds_list_create());
ds_map_add_list(record, Record.sprite, ds_list_create());
ds_map_add_list(record, Record.subimg, ds_list_create());
ds_map_add_list(record, Record.xscale, ds_list_create());
ds_map_add_list(record, Record.yscale, ds_list_create());
ds_map_add_list(record, Record.rot, ds_list_create());
ds_map_add_list(record, Record.col, ds_list_create());
ds_map_add_list(record, Record.alpha, ds_list_create());

return record;