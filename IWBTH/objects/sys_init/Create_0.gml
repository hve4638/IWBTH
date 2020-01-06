init();
test();
instance_create_depth(0, 0, 0, sys_debug);


if DEFAULT_INSTANTPLAY
{
	cout("###Instantplay mode###");

	save_idx = INSTANTPLAY_SAVESLOT;
	scr_gamestart();
}
else
	room_goto(rm_title);