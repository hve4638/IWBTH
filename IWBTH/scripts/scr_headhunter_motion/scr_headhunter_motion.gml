var dt;
motion[0] = todo_create(); //레이저
motion[1] = todo_create(); //돌진
motion[2] = todo_create(); //설치폭탄3회

todo_edit(motion[0]);
	todo_add_send(-1, 1);
	todo_add_send(1, true);
	todo_add_send(2, true);
	
	todo_add_sprite(spr_headhunter_laser_ready);
	dt = sprite_frame(spr_headhunter_laser_ready) * (sprite_get_number(spr_headhunter_laser_ready) - 1);
	
	todo_add_sleep(dt);

	todo_add_sprite(spr_headhunter_laser_focus);
	todo_add_send(11, true);
	todo_add_sleep(15);

	todo_add_send(1, false);
	todo_add_send(2, false);
	todo_add_sleep(10);
	
	todo_add_send(11, false);
	todo_add_sleep(10);
	
	todo_add_send(12); //lasershot
	todo_add_send(1, true);
	todo_add_sleep(25);
	
	repeat(2)
	{
		todo_add_send(1, true);
		todo_add_send(2, true);	
		todo_add_sleep(15);

		todo_add_send(1, false);
		todo_add_send(2, false);
		todo_add_send(11, true);
		todo_add_sleep(10);

		todo_add_send(11, false);
		todo_add_sleep(10);
	
		todo_add_send(12);
		todo_add_send(1, true);
		todo_add_sleep(25);
	}