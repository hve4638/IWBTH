var dt;
motion[0] = todo_create(); //레이저
motion[1] = todo_create(); //돌진
motion[2] = todo_create(); //점프
motion[3] = todo_create(); //구르기
motion[4] = todo_create(); //폭탄

todo_edit(motion[0]);
	todo_add_send(1, true);
	todo_add_send(2, true);
	
	todo_add_sprite(spr_headhunter_laser_ready);
	dt = sprite_frame(spr_headhunter_laser_ready) * (sprite_get_number(spr_headhunter_laser_ready) - 1);
	todo_add_sleep(dt);

	todo_add_sprite(spr_headhunter_laser_focus);

	repeat(3)
	{
		todo_add_send(1, true); //look
		todo_add_send(2, true); //focus
		todo_add_send(11, true); //laserpoint
		todo_add_sleep(15);

		todo_add_send(1, false); //look
		todo_add_send(2, false); //focus
		todo_add_send(11, false); //laserpoint
		todo_add_sleep(5);
	
		todo_add_send(12); //lasershoot
		todo_add_sleep(20);

		todo_add_send(1, true); //look
	}
	
	todo_add_sprite(spr_headhunter_laser_after);
	dt = sprite_frame(spr_headhunter_laser_after) * (sprite_get_number(spr_headhunter_laser_after) - 1);
	todo_add_sleep(dt);
	
	todo_add_signal(-4);

todo_edit(motion[1]);
	todo_add_send(1, true); //look
	todo_add_send(2, true); //focus
	todo_add_sleep(10);

	todo_add_send(1, false); //look
	todo_add_send(2, false); //focus
	todo_add_sprite(spr_headhunter_sword_ready);
	dt = sprite_frame(spr_headhunter_sword_ready);
	todo_add_sleep(dt * 5 + 5);

	todo_add_send(13, 3);
	todo_add_sprite(spr_headhunter_sword_dash);
	todo_add_sleep(3);
	
	todo_add_sprite(spr_headhunter_sword_after);
	dt = sprite_frame(spr_headhunter_sword_after) * sprite_get_number(spr_headhunter_sword_after);
	todo_add_sleep(dt);

	todo_add_signal(-4);

todo_edit(motion[2]);
	todo_add_sprite(spr_headhunter_jump_ready);
	dt = sprite_frame(spr_headhunter_sword_ready);
	todo_add_sleep(dt + 5);
	
	todo_add_sprite(spr_headhunter_jump);
	dt = sprite_frame(spr_headhunter_sword_ready);
	todo_add_send(14);

	todo_add_sleep(70);
	todo_add_nope();
	//todo_add_signal(-4);

todo_edit(motion[3]);
	todo_add_signal(3);
	todo_add_sleep(500);
	todo_add_nope();
	//todo_add_signal(-4);

todo_edit(motion[4]);
	todo_add_sprite(spr_headhunter_boom_ready);
	dt = sprite_frame(spr_headhunter_boom_ready) * sprite_get_number(spr_headhunter_boom_ready);
	todo_add_sleep(dt);
	
	todo_add_sprite(spr_headhunter_boom_shoot);
	dt = sprite_frame(spr_headhunter_boom_shoot) * 6;
	todo_add_sleep(dt);
	
	todo_add_sprite(spr_headhunter_boom_shoot);
	dt = sprite_frame(spr_headhunter_boom_shoot) * 6;
	todo_add_sleep(dt);
	
	todo_add_sprite(spr_headhunter_boom_shoot);
	dt = sprite_frame(spr_headhunter_boom_shoot) * 6;
	todo_add_sleep(dt);
	
	todo_add_nope();
	




