///@param record
var record = argument[0];
var ins = record[? Record.target];

if instance_exists(ins)
{
	if ins.object_index == obj_player ins.image_xscale *= ins.look;

	ds_queue_enqueue(record[? Record.state], RecordState.normal);
	ds_queue_enqueue(record[? Record.x], ins.x);
	ds_queue_enqueue(record[? Record.y], ins.y);
	ds_queue_enqueue(record[? Record.rm], room);
	ds_queue_enqueue(record[? Record.sprite], ins.sprite_index);
	ds_queue_enqueue(record[? Record.subimg], ins.image_index);
	ds_queue_enqueue(record[? Record.xscale], ins.image_xscale);
	ds_queue_enqueue(record[? Record.yscale], ins.image_yscale);
	ds_queue_enqueue(record[? Record.rot], ins.image_angle);
	ds_queue_enqueue(record[? Record.col], ins.image_blend);
	ds_queue_enqueue(record[? Record.alpha], ins.image_alpha);

	if ins.object_index == obj_player ins.image_xscale *= ins.look;
}
else
{
	ds_queue_enqueue(record[? Record.state], RecordState.die);
	ds_queue_enqueue(record[? Record.x], no);
	ds_queue_enqueue(record[? Record.y], no);
	ds_queue_enqueue(record[? Record.rm], room);
	ds_queue_enqueue(record[? Record.sprite], no);
	ds_queue_enqueue(record[? Record.subimg], no);
	ds_queue_enqueue(record[? Record.xscale], no);
	ds_queue_enqueue(record[? Record.yscale], no);
	ds_queue_enqueue(record[? Record.rot], no);
	ds_queue_enqueue(record[? Record.col], no);
	ds_queue_enqueue(record[? Record.alpha], no);
}