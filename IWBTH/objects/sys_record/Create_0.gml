enum Record {
	x,
	y,
	rm,
	sprite,
	subimg,
	xscale,
	yscale,
	state,
	rot,
	col,
	alpha,
	target
}

enum RecordState {
	normal,
	die
}

onRec = false;
record = record_create();
record_set_target(record, obj_player);
record_shot(record);

// *status*
// -1: die
// 0 : nul
// 1 : normal