var dt = 0;
motion[0] = todo_create();
motion[1] = todo_create();
motion[2] = todo_create();
motion[3] = todo_create();
motion[4] = todo_create();
motion[5] = todo_create();
motion[6] = todo_create();
motion[7] = todo_create();
motion[8] = todo_create();

///Signal
//-1: state
//-2: struct, spd, lock
todo_edit(motion[0]);
	var dt = ds_list_size(st_gunget);
	todo_add_send(-8, 0);
	todo_add_send(-1, stateD.attack);
	todo_add_send(-2, st_gunget, 1/3, no);
	todo_add_sleep(dt * 3 + 10);
	
	var dt = ds_list_size(st_gunout_side);
	todo_add_send(-2, st_gunout_side, 1/4, no);
	todo_add_sound(snd_dragungunout);
	todo_add_sleep(dt * 4 + 10);

	var dt = ds_list_size(st_gunshoot_side);
	todo_add_send(-2, st_gunshoot_side, 1/4, no);
	todo_add_sleep(dt * 4 + 5);

	var dt = ds_list_size(st_guntwirl_stof);
	todo_add_send(-2, st_guntwirl_stof, 1/4, no);
	todo_add_sound(snd_dragunguntrwil);
	todo_add_sleep(dt * 4);
	
	var dt = ds_list_size(st_gunshoot_front);
	todo_add_send(-2, st_gunshoot_front, 1/4, no);
	todo_add_sleep(dt * 4);
	
	var dt = ds_list_size(st_guntwirl_ftos);
	todo_add_send(-2, st_guntwirl_ftos, 1/4, no);
	todo_add_sound(snd_dragunguntrwil);
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
	todo_add_send(-8, 0);
	todo_add_send(-1, stateD.attack);
	todo_add_send(-2, st_gunget, 1/3, no);
	todo_add_sleep(dt * 3 + 10);
	
	var dt = ds_list_size(st_gunout_side);
	todo_add_send(-2, st_gunout_side, 1/4, no);
	todo_add_sound(snd_dragungunout);
	todo_add_sleep(dt * 4);

	var dt = ds_list_size(st_guntwirl_stof);
	todo_add_send(-2, st_guntwirl_stof, 1/3, no);
	todo_add_sound(snd_dragunguntrwil);
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
	todo_add_sound(snd_dragunguntrwil);
	todo_add_sleep(dt * 3);
	
	var dt = ds_list_size(st_gunoutro);
	todo_add_send(-2, st_gunoutro, 1/3, no);
	todo_add_sleep(dt * 4);
	
	var dt = ds_list_size(st_handout);
	todo_add_send(-2, st_handout, 1/3, no);
	todo_add_sleep(dt * 4);
	todo_add_nope();

	
todo_edit(motion[2]); //MAC
	todo_add_send(-1, stateD.attack);
	var dt = ds_list_size(st_gunget);
	todo_add_send(-6, false);
	todo_add_send(-2, st_macget, 1/5, no);
	todo_add_sound(snd_dragungunout);
	todo_add_sleep(dt * 5 + 15);
	
	todo_add_send(-6, true);
	var dt = ds_list_size(st_macshoot);
	todo_add_send(-2, st_macshoot, 1/9, no);
	todo_add_sleep(9 * 2 + 5);
	todo_add_sound(snd_dragunmacshoot);
	todo_add_sleep(9 * 10 + 4);
	todo_add_send(-6, false);
	todo_add_sleep((dt - 13) * 9 + 1);
	
	todo_add_send(-6, true);
	
	var dt = ds_list_size(st_handout);
	todo_add_send(-2, st_handout, 1/3, no);
	todo_add_sleep(dt * 4);
	todo_add_signal(-4);
	todo_add_nope();


todo_edit(motion[3]); //head
	todo_add_signal(-4);
	todo_add_send(-11, DragunParts.head, 0);
	todo_add_send(-1, stateD.attack);
	var dt = ds_list_size(st_headshoot);
	todo_add_sound(snd_dragunrpgready);
	todo_add_send(-7, true);
	todo_add_send(-2, st_headshoot, 0.2, no);
	todo_add_sleep(dt * 5 + 1);	

	todo_add_send(-7, false);
	todo_add_send(-11, DragunParts.head, 1);
	todo_add_signal(-4);
	todo_add_nope();


todo_edit(motion[4]);
	todo_add_send(-1, stateD.attack);
	var dt = ds_list_size(st_rpgget);
	todo_add_send(-2, st_rpgget, 1/4, lock_rightarm);
	todo_add_sleep(dt * 4);

	var dt = ds_list_size(st_rpgout);
	todo_add_send(-2, st_rpgout, 1/4, lock_rightarm);
	todo_add_sound(snd_dragunrpgready);
	todo_add_sleep(dt * 4 + 20);

	todo_add_send(-6, false);
	var dt = ds_list_size(st_rpgshoot);
	todo_add_send(-2, st_rpgshoot, 1/6, lock_rightarm);
	todo_add_sleep(dt);
	
	todo_add_send(-6, true);
	todo_add_sleep(dt * 3);

	var dt = ds_list_size(st_rpgoutro);
	todo_add_send(-2, st_rpgoutro, 1/5, lock_rightarm);
	todo_add_sleep(dt * 4 + 15);
	
	var dt = ds_list_size(st_handout);
	todo_add_send(-2, st_handout, 1/3, lock_rightarm);
	todo_add_sleep(dt * 4);
	todo_add_signal(-4);
	todo_add_nope();


todo_edit(motion[5]);
	var dt = ds_list_size(st_gunget);
	todo_add_send(-8, 1);
	todo_add_send(-1, stateD.attack);
	todo_add_send(-2, st_gunget, 1/3, lock_arms);
	todo_add_sleep(dt * 3 + 10);
	
	var dt = ds_list_size(st_gunout_side);
	todo_add_send(-2, st_gunout_side, 1/4, lock_arms);
	todo_add_sound(snd_dragungunout);
	todo_add_sleep(dt * 4 + 10);

	var dt = ds_list_size(st_gunshoot_side);
	var dt2 = ds_list_size(st_guntwirl_stof);
	var dt3 = ds_list_size(st_gunshoot_front);
	var dt4 = ds_list_size(st_guntwirl_ftos);
	//s s
	todo_add_send(-2, st_gunshoot_side, 1/4, lock_leftarm);
	todo_add_send(-2, st_guntwirl_stof, 1/4, lock_rightarm);
	todo_add_sound(snd_dragunguntrwil);
	todo_add_sleep(dt * 4);
	
	//s f
	todo_add_send(-2, st_guntwirl_stof, 1/4, lock_leftarm);
	todo_add_sleep((dt2 - dt) * 4);

	//f f
	todo_add_send(-2, st_gunshoot_front, 1/4, lock_rightarm);
	todo_add_sleep(dt3 * 4);

	todo_add_send(-2, st_guntwirl_ftos, 1/4, lock_rightarm);
	todo_add_sound(snd_dragunguntrwil);
	todo_add_sleep(dt4 * 4 + 20);
	
	todo_add_send(-2, st_gunshoot_side, 1/4, lock_rightarm);
	todo_add_sleep(dt * 4 + 15);

	todo_add_send(-2, st_gunshoot_front, 1/4, lock_leftarm);
	todo_add_sleep(dt3 * 4);

	todo_add_send(-2, st_guntwirl_ftos, 1/4, lock_leftarm);
	todo_add_sound(snd_dragunguntrwil);
	todo_add_sleep(dt4 * 4);

	var dt = ds_list_size(st_gunoutro);
	todo_add_send(-2, st_gunoutro, 1/6, no);
	todo_add_sleep(dt * 4);
	
	var dt = ds_list_size(st_handout);
	todo_add_send(-2, st_handout, 1/5, no);
	todo_add_sleep(dt * 4);
	todo_add_nope();
	
	todo_add_signal(-4);
	todo_add_nope();

todo_edit(motion[6]);
	todo_add_send(-1, stateD.attack);
	
	var dt = ds_list_size(st_gunget);
	var dt2 = 7;
	var dt3 = dt - dt2;
	todo_add_send(-2, st_gunget, 1/4, lock_arms);
	todo_add_sleep(dt * 4 + 5);
	
	var dt = ds_list_size(st_knife);
	todo_add_send(-2, st_knife, 1/4, lock_leftarm);
	todo_add_sleep(dt2 * 4);
	
	todo_add_send(1, DragunParts.hand_l, 77 - 24, 45 - 25);
	todo_add_send(-2, st_knife, 1/4, lock_rightarm);
	todo_add_sleep(dt2 * 4);
	
	todo_add_send(1, DragunParts.hand_r, 77 - 24, 45 - 25);
	todo_add_sleep(dt3 * 4);
	
	todo_add_signal(-4);
	todo_add_nope();

todo_edit(motion[7]);
	todo_add_send(-1, stateD.attack);

	todo_add_send(-9, DragunParts.wings, spr_dragun_wings_flap);
	todo_add_send(-11, DragunParts.wings, 0.75);
	todo_add_send(2, 1);
	todo_add_sleep(50 * 7);

todo_edit(motion[8]);
	todo_add_signal(-20);
	todo_add_send(-2, st_death, 1/9, no);
	todo_add_sleep(11 * 9);
	
	todo_add_signal(10);
/*
	todo_add_send(-9, DragunParts.wings, spr_dragun_wings_idle);
	todo_add_send(-11, DragunParts.wings, 1);
	todo_add_send(2, 0);
	todo_add_sleep(50 * 7);
	todo_add_nope();
*/

/*
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