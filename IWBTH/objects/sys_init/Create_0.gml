init();

test();

instance_create_depth(0, 0, 0, sys_debug);


if DEFAULT_INSTANTPLAY
{
	cout("###instantplay mode###");

	save_idx = INSTANTPLAY_SAVESLOT;
	if !save_integrity()
		save_def();
	set_save_variable();

	load();
}
else
	room_goto(rm_title);