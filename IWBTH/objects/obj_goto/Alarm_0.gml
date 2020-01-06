enable_keyinput(true);

global_fade_set(0, fadeout_time);
room_goto(goto);

if enable_nextroom
	player_create_nextroom(nr_x, nr_y, nr_addx, nr_addy, nr_modx, nr_mody);