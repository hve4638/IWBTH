var dt = 0;
motion[0] = todo_create();

///Signal
//-1: state
//-2: struct, spd, lock
todo_edit(motion[0]);
	var dt = ds_list_size(st_gunget);
	todo_add_send(-2, st_gunget, 1/3, no);
	todo_add_sleep(dt * 3 + 10);
	
	var dt = ds_list_size(st_gunout_side);
	todo_add_send(-2, st_gunout_side, 1/4, no);
	todo_add_sleep(dt * 4 + 30);

	var dt = ds_list_size(st_gunshoot_side);
	todo_add_send(-2, st_gunshoot_side, 1/4, no);
	todo_add_sleep(dt * 4 + 10);

	var dt = ds_list_size(st_guntwirl_stof);
	todo_add_send(-2, st_guntwirl_stof, 1/4, no);
	todo_add_sleep(dt * 4 + 20);
	
	var dt = ds_list_size(st_gunshoot_front);
	todo_add_send(-2, st_gunshoot_front, 1/4, no);
	todo_add_sleep(dt * 4 + 25);