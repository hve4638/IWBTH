var record;

record = ds_map_create();
record[? Record.target] = noone;
record[? Record.type] = RecordType.list;
record[? Record.index] = 0;
ds_map_add(record, Record.state, ds_list_create());
ds_map_add(record, Record.x, ds_list_create());
ds_map_add(record, Record.y, ds_list_create());
ds_map_add(record, Record.rm, ds_list_create());
ds_map_add(record, Record.sprite, ds_list_create());
ds_map_add(record, Record.subimg, ds_list_create());
ds_map_add(record, Record.xscale, ds_list_create());
ds_map_add(record, Record.yscale, ds_list_create());
ds_map_add(record, Record.rot, ds_list_create());
ds_map_add(record, Record.col, ds_list_create());
ds_map_add(record, Record.alpha, ds_list_create());

return record;