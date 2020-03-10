var dt;
enum Hmotion
{
	laser1,
	laser2,
	laser3,
	dash1,
	dash2,
	dash3,
	jump,
	roll,
	fall,
	fall2,
	boom1,
	boom2,
	boom3,
	size
}
motion = array_create(Hmotion.size);
var s = array_size(motion);
for(var i = 0; i < s; i++)
	motion[i] = todo_create();

todo_edit(motion[Hmotion.laser1]);
	#region
	todo_add_send(1, true);
	todo_add_send(2, true);
	
	todo_add_sprite(spr_headhunter_laser_ready);
	dt = sprite_frame(spr_headhunter_laser_ready) * (sprite_get_number(spr_headhunter_laser_ready) - 1);
	todo_add_sleep(dt);

	todo_add_sprite(spr_headhunter_laser_focus);


		todo_add_send(1, true); //look
		todo_add_send(2, true); //focus
		todo_add_send(11, true); //laserpoint
		todo_add_sleep(25);

		todo_add_send(1, false); //look
		todo_add_send(2, false); //focus
		todo_add_send(11, false); //laserpoint
		todo_add_sleep(8);
	
		todo_add_send(12); //lasershoot
		todo_add_sleep(20);

		todo_add_send(1, true); //look
	
	todo_add_sprite(spr_headhunter_laser_after);
	dt = sprite_frame(spr_headhunter_laser_after) * (sprite_get_number(spr_headhunter_laser_after) - 1);
	todo_add_sleep(dt);
	
	todo_add_signal(-4);
	#endregion

todo_edit(motion[Hmotion.laser2]);
	#region
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
		todo_add_sleep(7);
	
		todo_add_send(12); //lasershoot
		todo_add_sleep(20);

		todo_add_send(1, true); //look
	}
	
	todo_add_sprite(spr_headhunter_laser_after);
	dt = sprite_frame(spr_headhunter_laser_after) * (sprite_get_number(spr_headhunter_laser_after) - 1);
	todo_add_sleep(dt);
	
	todo_add_signal(-4);
	#endregion

todo_edit(motion[Hmotion.laser3]);
	#region
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
		todo_add_sleep(10);

		todo_add_send(1, true); //look
	}
	
	todo_add_sprite(spr_headhunter_laser_after);
	dt = sprite_frame(spr_headhunter_laser_after) * (sprite_get_number(spr_headhunter_laser_after) - 1);
	todo_add_sleep(dt);
	
	todo_add_signal(-4);
	#endregion

todo_edit(motion[Hmotion.dash1]);
	#region
	todo_add_send(1, true); //look
	todo_add_send(2, true); //focus
	todo_add_sleep(10);

	todo_add_send(1, false); //look
	todo_add_send(2, false); //focus
	todo_add_sprite(spr_headhunter_sword_ready);
	dt = sprite_frame(spr_headhunter_sword_ready);
	todo_add_sleep(dt * 5 + 10);

	todo_add_send(13, 3);
	todo_add_sprite(spr_headhunter_sword_dash);
	todo_add_sleep(3);
	
	todo_add_sprite(spr_headhunter_sword_after);
	dt = sprite_frame(spr_headhunter_sword_after) * sprite_get_number(spr_headhunter_sword_after);
	todo_add_sleep(dt);

	todo_add_signal(-4);
	#endregion

todo_edit(motion[Hmotion.dash2]);
	#region
	todo_add_send(1, true); //look
	todo_add_send(2, true); //focus
	todo_add_sleep(3);

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
	#endregion

todo_edit(motion[Hmotion.dash3]);
	#region
	todo_add_send(1, true); //look
	todo_add_send(2, true); //focus
	todo_add_sleep(3);

	todo_add_send(1, false); //look
	todo_add_send(2, false); //focus
	todo_add_sprite(spr_headhunter_sword_ready);
	dt = sprite_frame(spr_headhunter_sword_ready);
	todo_add_sleep(dt * 5);

	todo_add_send(13, 3);
	todo_add_sprite(spr_headhunter_sword_dash);
	todo_add_sleep(3);
	
	todo_add_sprite(spr_headhunter_sword_after);
	dt = sprite_frame(spr_headhunter_sword_after) * sprite_get_number(spr_headhunter_sword_after);
	todo_add_sleep(dt);

	todo_add_signal(-4);
	#endregion

todo_edit(motion[Hmotion.jump]);
	#region
	todo_add_sprite(spr_headhunter_jump_ready);
	dt = sprite_frame(spr_headhunter_sword_ready);
	todo_add_sleep(dt + 5);
	
	todo_add_sprite(spr_headhunter_jump);
	dt = sprite_frame(spr_headhunter_sword_ready);
	todo_add_send(14);

	todo_add_sleep(70);
	todo_add_nope();
	//todo_add_signal(-4);
	#endregion

todo_edit(motion[Hmotion.roll]);
	#region
	todo_add_signal(3);
	todo_add_sleep(500);
	todo_add_nope();
	//todo_add_signal(-4);
	#endregion

todo_edit(motion[Hmotion.boom1]);
	#region
	todo_add_sprite(spr_headhunter_boom_ready, 0, 1.5);
	dt = sprite_frame(spr_headhunter_boom_ready) * (sprite_get_number(spr_headhunter_boom_ready) / 1.5);
	todo_add_sleep(dt);
	
	repeat(3)
	{
		todo_add_sprite(spr_headhunter_boom_shoot);
		dt = sprite_frame(spr_headhunter_boom_shoot) * 6;
		todo_add_signal(15);
		todo_add_sleep(dt);
	}
	todo_add_sprite(spr_headhunter_boom_after);
	dt = sprite_frame(spr_headhunter_boom_after) * sprite_get_number(spr_headhunter_boom_after);
	todo_add_sleep(dt + 2);
	
	todo_add_nope();
	#endregion

todo_edit(motion[Hmotion.boom2]);
	#region
	todo_add_sprite(spr_headhunter_boom_ready, 0, 1.5);
	dt = sprite_frame(spr_headhunter_boom_ready) * (sprite_get_number(spr_headhunter_boom_ready) / 1.5);
	todo_add_sleep(dt);
	
	repeat(3)
	{
		todo_add_sprite(spr_headhunter_boom_shoot, 0, 1.4);
		dt = sprite_frame(spr_headhunter_boom_shoot) * 6 / 1.4;
		todo_add_signal(15);
		todo_add_sleep(dt);
	}
	todo_add_sprite(spr_headhunter_boom_after);
	dt = sprite_frame(spr_headhunter_boom_after) * sprite_get_number(spr_headhunter_boom_after);
	todo_add_sleep(dt);
	
	todo_add_nope();
	#endregion

todo_edit(motion[Hmotion.fall]);
	#region
	todo_add_send(-3, true);
	todo_add_send(-5, 18, 1);
	todo_add_sprite(spr_headhunter_falldown);

	dt = sprite_frame(spr_headhunter_falldown);
	todo_add_sleep(dt * 4);

	todo_add_signal(-1);
	todo_add_sleep(dt * 4 + 20);
	//todo_add_send(-3, false);
	todo_add_send(-6, 0.6, 0, c_white);
	todo_add_send(-6, 0.0, 10, c_white);
	todo_add_signal(4);
	todo_add_sprite(spr_empty);
	
	todo_add_sleep(25);
	todo_add_signal(16);
	
	todo_add_sleep(60);
	todo_add_send(-10, room_width div 2);
	todo_add_send(-11, 166 - 64);
	todo_add_send(17, 3);
	todo_add_sprite(spr_headhunter_sword_dash);
	todo_add_sleep(3);

	todo_add_sprite(spr_headhunter_sword_after);
	dt = sprite_frame(spr_headhunter_sword_after) * sprite_get_number(spr_headhunter_sword_after);
	todo_add_sleep(dt + 5);
	todo_add_send(-3, false);

	todo_add_signal(-4);
	todo_add_nope();
	#endregion


todo_edit(motion[Hmotion.fall2]);
	#region
	todo_add_send(-3, true);
	todo_add_send(-5, 18, 1);
	todo_add_sprite(spr_headhunter_falldown);

	dt = sprite_frame(spr_headhunter_falldown);
	todo_add_sleep(dt * 4);

	todo_add_signal(-1);
	todo_add_sleep(dt * 4 + 20);

	todo_add_send(-6, 0.6, 0, c_white);
	todo_add_send(-6, 0.0, 10, c_white);
	todo_add_signal(4);
	todo_add_sprite(spr_empty);
	
	todo_add_sleep(25);
	todo_add_signal(16);
	
	todo_add_sleep(60);
	todo_add_send(-10, room_width div 2);
	todo_add_send(-11, 166 - 64);
	todo_add_send(17, 3);
	todo_add_sprite(spr_headhunter_sword_dash);
	todo_add_sleep(3);

	todo_add_sprite(spr_headhunter_sword_after);
	dt = sprite_frame(spr_headhunter_sword_after) * sprite_get_number(spr_headhunter_sword_after);
	todo_add_sleep(dt + 5);
	todo_add_send(-3, false);

	todo_add_signal(-4);
	todo_add_nope();
	#endregion