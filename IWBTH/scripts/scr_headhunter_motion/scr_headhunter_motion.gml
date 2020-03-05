var dt;
motion[0] = todo_create(); //레이저
motion[1] = todo_create(); //돌진
motion[2] = todo_create(); //설치폭탄3회

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
	todo_add_send(1, false); //look
	todo_add_sprite(spr_headhunter_sword_ready);
	dt = sprite_frame(spr_headhunter_sword_ready);
	todo_add_sleep(dt * 5 + 10);

	todo_add_push(13, 2);
	todo_add_sprite(spr_headhunter_sword_attack);
	dt = sprite_frame(spr_headhunter_sword_attack);
	todo_add_sleep(2);
	
	todo_add_sprite(spr_headhunter_sword_after);
	dt = sprite_frame(spr_headhunter_sword_after);
	todo_add_sleep(dt * 10);

	todo_add_signal(-4);
