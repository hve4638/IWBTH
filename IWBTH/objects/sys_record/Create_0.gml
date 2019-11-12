enum Record {
	type,
	target,
	index,
	state,
	x,
	y,
	rm,
	sprite,
	subimg,
	xscale,
	yscale,
	rot,
	col,
	alpha
}

enum RecordState {
	normal,
	die
}

enum RecordType {
	queue,
	list
}

onRec = false;
onPlay = false;
record = record_create();
//record = record_create_light();

record_set_target(record, obj_player);
//record_clear(record);
//record_destroy(record);
//record_set_index();
//record_get_index();
//draw_record(record, index);
//record_encode(record);
//record_decode();

// *status*
// -1: die
// 0 : nul
// 1 : normal