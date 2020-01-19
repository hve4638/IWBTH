var dt = 0;
motion[0] = todo_create();
motion[1] = todo_create();
motion[2] = todo_create();
motion[3] = todo_create();
motion[4] = todo_create();

///Signal
//-1: state
//-2: struct, spd, lock
todo_edit(motion[0]);
	var dt = ds_list_size(st_gunget);
	todo_add_send(-1, stateD.attack);
	todo_add_send(-2, st_gunget, 1/3, no);
	todo_add_sleep(dt * 3 + 10);
	
	var dt = ds_list_size(st_gunout_side);
	todo_add_send(-2, st_gunout_side, 1/4, no);
	todo_add_sleep(dt * 4 + 10);

	var dt = ds_list_size(st_gunshoot_side);
	todo_add_send(-2, st_gunshoot_side, 1/4, no);
	todo_add_sleep(dt * 4 + 5);

	var dt = ds_list_size(st_guntwirl_stof);
	todo_add_send(-2, st_guntwirl_stof, 1/4, no);
	todo_add_sleep(dt * 4);
	
	var dt = ds_list_size(st_gunshoot_front);
	todo_add_send(-2, st_gunshoot_front, 1/4, no);
	todo_add_sleep(dt * 4);
	
	var dt = ds_list_size(st_guntwirl_ftos);
	todo_add_send(-2, st_guntwirl_ftos, 1/4, no);
	todo_add_sleep(dt * 4);
	
	var dt = ds_list_size(st_gunshoot_side);
	todo_add_send(-2, st_gunshoot_side, 1/4, no);
	todo_add_sleep(dt * 4 + 5);
	
	var dt = ds_list_size(st_gunoutro);
	todo_add_send(-2, st_gunoutro, 1/3, no);
	todo_add_sleep(dt * 4);
	
	var dt = ds_list_size(st_handout);
	todo_add_send(-2, st_handout, 1/3, no);
	todo_add_sleep(dt * 4);
	todo_add_nope();

todo_edit(motion[1]);
	var dt = ds_list_size(st_gunget);
	todo_add_send(-1, stateD.attack);
	todo_add_send(-2, st_gunget, 1/3, no);
	todo_add_sleep(dt * 3 + 10);
	
	var dt = ds_list_size(st_gunout_side);
	todo_add_send(-2, st_gunout_side, 1/4, no);
	todo_add_sleep(dt * 4);

	var dt = ds_list_size(st_guntwirl_stof);
	todo_add_send(-2, st_guntwirl_stof, 1/3, no);
	todo_add_sleep(dt * 3 + 3);
	
	var dt = ds_list_size(st_gunshoot_front);
	todo_add_signal(-3);
	todo_add_send(-2, st_gunshoot_front, 1/4, no);
	todo_add_sleep(dt * 4 - 8);

	var dt = ds_list_size(st_gunshoot_front);
	todo_add_signal(-3);
	todo_add_send(-2, st_gunshoot_front, 1/4, no);
	todo_add_sleep(dt * 4 - 8);

	var dt = ds_list_size(st_gunshoot_front);
	todo_add_signal(-3);
	todo_add_send(-2, st_gunshoot_front, 1/4, no);
	todo_add_sleep(dt * 4 - 8);
	
	var dt = ds_list_size(st_guntwirl_ftos);
	todo_add_send(-2, st_guntwirl_ftos, 1/3, no);
	todo_add_sleep(dt * 3);
	
	var dt = ds_list_size(st_gunoutro);
	todo_add_send(-2, st_gunoutro, 1/3, no);
	todo_add_sleep(dt * 4);
	
	var dt = ds_list_size(st_handout);
	todo_add_send(-2, st_handout, 1/3, no);
	todo_add_sleep(dt * 4);
	todo_add_nope();
	
todo_edit(motion[2]);
	todo_add_send(-1, stateD.attack);
	var dt = ds_list_size(st_gunget);
	todo_add_send(-6, false);
	todo_add_send(-2, st_macget, 1/5, no);
	todo_add_sleep(dt * 5 + 15);
	
	todo_add_send(-6, true);
	var dt = ds_list_size(st_macshoot);
	todo_add_send(-2, st_macshoot, 1/9, no);
	todo_add_sleep(9 * 13);
	
	todo_add_send(-6, false);
	todo_add_sleep((dt - 13) * 9 + 15);
	
	todo_add_signal(-4);
	todo_add_nope();
