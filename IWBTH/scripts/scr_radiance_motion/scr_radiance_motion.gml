var dt;
enum Rmotion
{
	laser,
	laserall,
	sword360,
	swordtop,
	swordside,
	missile,
	tele,
<<<<<<< HEAD
	phase1end,
	phase2start,
	phase2start2,
	last1,
=======
>>>>>>> parent of 6cb4623... Radiance 1페이즈 패턴
	size
}
motion = array_create(Rmotion.size);
var s = array_size(motion);
for(var i = 0; i < s; i++)
	motion[i] = todo_create();

todo_edit(motion[Rmotion.swordtop]);
	#region
		todo_add_sleep(20);
		todo_add_signal(Rsignal.swordtop);
		todo_add_sleep(20);
		
		todo_add_send(Rsignal.todoplay, Rmotion.tele);
	#endregion

todo_edit(motion[Rmotion.swordside]);
	#region
		todo_add_sleep(30);
		todo_add_signal(Rsignal.swordside);
		todo_add_sleep(70);
		
		todo_add_send(Rsignal.todoplay, Rmotion.tele);
	#endregion

todo_edit(motion[Rmotion.laser]);
	#region
		todo_add_sprite(spr_radiance_focus);
		todo_add_sleep(20);
		todo_add_signal(Rsignal.laser);
		todo_add_sleep(30);
		todo_add_signal(Rsignal.laser);
		todo_add_sleep(30);
		todo_add_signal(Rsignal.laser);
		todo_add_sleep(50);
		
		todo_add_send(Rsignal.todoplay, Rmotion.tele);
	#endregion

todo_edit(motion[Rmotion.laserall]);
	#region
		todo_add_sleep(10);
		todo_add_signal(Rsignal.laserall);
		todo_add_sleep(60);
		
		todo_add_send(Rsignal.todoplay, Rmotion.tele);
	#endregion

todo_edit(motion[Rmotion.tele]);
	#region
		todo_add_sprite(spr_radiance_turn);
		dt = sprite_get_frame(spr_radiance_turn);
		todo_add_sleep(dt);
		
		todo_add_signal(Rsignal.glow);
		todo_add_signal(Rsignal.tele);
		todo_add_sleep(5);
		
		todo_add_sprite(spr_radiance_turn2);
		dt = sprite_get_frame(spr_radiance_turn2);
		todo_add_sleep(dt + 10);
		
		todo_add_signal(Rsignal.next);
		todo_add_nope();
	#endregion

todo_edit(motion[Rmotion.sword360]);
	#region
		todo_add_sprite(spr_radiance_focus);
		todo_add_sleep(20);

		repeat(3)
		{
			todo_add_signal(Rsignal.sword360);
			todo_add_sleep(20);
		
			todo_add_signal(Rsignal.sword360fire);
			todo_add_sleep(5);
		}
		todo_add_sleep(15);
		
		todo_add_send(Rsignal.todoplay, Rmotion.tele);
	#endregion

todo_edit(motion[Rmotion.missile]);
	#region
		todo_add_sprite(spr_radiance_focus);
		todo_add_sleep(20);
		todo_add_signal(Rsignal.missile);
		todo_add_sleep(40);
		todo_add_signal(Rsignal.missile);
		todo_add_sleep(40);
		todo_add_signal(Rsignal.missile);
		todo_add_sleep(60);
		
		todo_add_send(Rsignal.todoplay, Rmotion.tele);
	#endregion
<<<<<<< HEAD

todo_edit(motion[Rmotion.last1]);
	#region
		todo_add_sleep(20);

		todo_add_sprite(spr_radiance_focus);
		todo_add_sleep(30);
		
		todo_add_signal(Rsignal.swordtoploop);
		todo_add_sleep(20);
	#endregion

todo_edit(motion[Rmotion.phase1end]);
	#region
		todo_add_sprite(spr_radiance_falldown1);
		todo_add_sleep(10);

		todo_add_sprite(spr_radiance_falldown);
		dt = sprite_get_frame(spr_radiance_falldown);

		todo_add_sleep(dt + 60);
		
		todo_add_send(Rsignal.eyeshine, true);
		todo_add_send(Rsignal.roar, true);
		todo_add_send(Rsignal.Screenshake, 1, 65);
		todo_add_sprite(spr_radiance_falldown2);
		
		todo_add_sleep(65);
		
		todo_add_signal(Rsignal.go2phase);
		todo_add_send(Rsignal.eyeshine, false);
		todo_add_send(Rsignal.roar, false);
		
		todo_add_sleep(40);
		
		todo_add_send(Rsignal.todoplay, Rmotion.phase2start);
	#endregion

todo_edit(motion[Rmotion.phase2start]);
	#region
		todo_add_send(Rsignal.addplatform, 0);
		todo_add_sleep(30);
		
		todo_add_send(Rsignal.addplatform, 1);
		todo_add_sleep(25);
		
		todo_add_send(Rsignal.addplatform, 2);
		todo_add_sleep(20);
		
		todo_add_send(Rsignal.addplatform, 3);
		todo_add_sleep(40);
		
	#endregion


todo_edit(motion[Rmotion.phase2start2]);
	#region
		todo_add_send(Rsignal.removeplatform, 0);
		todo_add_sleep(20);

		todo_add_send(Rsignal.removeplatform, 1);
		todo_add_sleep(20);

		todo_add_send(Rsignal.removeplatform, 2);
		todo_add_sleep(20);

		
	#endregion
=======
	
	
>>>>>>> parent of 6cb4623... Radiance 1페이즈 패턴
