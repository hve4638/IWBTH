///@param record
var record = argument[0];
var ins = record[? Record.target];

if instance_exists(ins)
{
	if ins.object_index == obj_player ins.image_xscale *= ins.look;

	ds_list_add(record[? Record.state], RecordState.normal);
	ds_list_add(record[? Record.x], ins.x);
	ds_list_add(record[? Record.y], ins.y);
	ds_list_add(record[? Record.rm], room);
	ds_list_add(record[? Record.sprite], ins.sprite_index);
	ds_list_add(record[? Record.subimg], ins.image_index);
	ds_list_add(record[? Record.xscale], ins.image_xscale);
	ds_list_add(record[? Record.yscale], ins.image_yscale);
	ds_list_add(record[? Record.rot], ins.image_angle);
	ds_list_add(record[? Record.col], ins.image_blend);
	ds_list_add(record[? Record.alpha], ins.image_alpha);

	if ins.object_index == obj_player ins.image_xscale *= ins.look;
}
else
{
	ds_list_add(record[? Record.state], RecordState.die);
	ds_list_add(record[? Record.x], no);
	ds_list_add(record[? Record.y], no);
	ds_list_add(record[? Record.rm], room);
	ds_list_add(record[? Record.sprite], no);
	ds_list_add(record[? Record.subimg], no);
	ds_list_add(record[? Record.xscale], no);
	ds_list_add(record[? Record.yscale], no);
	ds_list_add(record[? Record.rot], no);
	ds_list_add(record[? Record.col], no);
	ds_list_add(record[? Record.alpha], no);
}
