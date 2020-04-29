var dt;
enum Rmotion
{
	laser,
	laserall,
	sword360,
	swordtop,
	swordside,
	missile,
	missile2,
	tele,
	phase1end,
	phase1enter,
	phase2enter,
	last1,
	last2,
	lastmissile,
	die,
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
		todo_add_sleep(10);
		
		todo_add_send(Rsignal.eyeshine, true);
		todo_add_sleep(10);
		
		todo_add_signal(Rsignal.laser);
		todo_add_sleep(30);
		todo_add_signal(Rsignal.laser);
		todo_add_sleep(30);
		todo_add_signal(Rsignal.laser);
		todo_add_sleep(50);
		
		todo_add_send(Rsignal.eyeshine, false);
		todo_add_sleep(10);
		
		todo_add_send(Rsignal.todoplay, Rmotion.tele);
	#endregion

todo_edit(motion[Rmotion.laserall]);
	#region
		todo_add_sleep(10);
		todo_add_signal(Rsignal.laserall);
		todo_add_sleep(75);
		
		todo_add_send(Rsignal.todoplay, Rmotion.tele);
	#endregion

todo_edit(motion[Rmotion.phase1enter]);
	#region		
		todo_add_send(Rsignal.camerashake, 2, 30);
		todo_add_sleep(30);
		todo_add_send(Rsignal.camerashake, 6, 10);
		todo_add_sleep(10);
		
		todo_add_sprite(spr_radiance_idle);
		todo_add_sound(snd_radiance_laser_burst);
		todo_add_send(Rsignal.camerashake, 8, 2);
		todo_add_send(Rsignal.camerafade, 15, 0.9);
		todo_add_send(Rsignal.showhp, 1);
		todo_add_signal(Rsignal.intro);
		todo_add_sleep(30);

		todo_add_send(Rsignal.todoplay, Rmotion.tele);
	#endregion


todo_edit(motion[Rmotion.tele]);
	#region
		todo_add_send(Rsignal.invin, true);
		todo_add_sprite(spr_radiance_turn);
		dt = sprite_get_frame(spr_radiance_turn);
		todo_add_sleep(dt);
		
		todo_add_signal(Rsignal.glow);
		todo_add_signal(Rsignal.tele);
		todo_add_sound(snd_radiance_teleport);
		todo_add_sleep(5);
		
		todo_add_sprite(spr_radiance_turn2);
		dt = sprite_get_frame(spr_radiance_turn2);
		todo_add_sleep(dt);
		
		todo_add_signal(Rsignal.next);
		todo_add_send(Rsignal.invin, false);
		todo_add_sleep(10);
		todo_add_nope();
	#endregion

todo_edit(motion[Rmotion.sword360]);
	#region
		todo_add_sprite(spr_radiance_focus);
		todo_add_sleep(15);
		
		todo_add_send(Rsignal.eyeshine, true);
		todo_add_sleep(5);

		repeat(3)
		{
			todo_add_sound(snd_radiance_sword_create_circular);
			todo_add_signal(Rsignal.sword360);
			todo_add_sleep(20);
		
			todo_add_sound(snd_radiance_sword_shoot);
			todo_add_signal(Rsignal.sword360fire);
			todo_add_sleep(5);
		}
		todo_add_sleep(10);
		
		todo_add_send(Rsignal.eyeshine, false);
		todo_add_sleep(10);
		
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

todo_edit(motion[Rmotion.missile2]);
	#region
		todo_add_sprite(spr_radiance_focus);
		todo_add_sleep(20);
		todo_add_signal(Rsignal.missile);
		todo_add_sleep(46);
		todo_add_signal(Rsignal.missile);
		todo_add_sleep(46);
		todo_add_signal(Rsignal.missile);
		todo_add_sleep(60);
		
		todo_add_send(Rsignal.todoplay, Rmotion.tele);
	#endregion

todo_edit(motion[Rmotion.lastmissile]);
	#region
		todo_add_sprite(spr_radiance_focus);
		todo_add_sleep(10);
		todo_add_signal(Rsignal.missile);
		todo_add_sleep(20);
		todo_add_signal(Rsignal.missile);
		todo_add_sleep(20);
		todo_add_signal(Rsignal.missile);
		todo_add_sleep(60);
		
		todo_add_send(Rsignal.todoplay, Rmotion.tele);
	#endregion

todo_edit(motion[Rmotion.last1]);
	#region
		todo_add_sleep(20);
		todo_add_sound(snd_radiance_scream);
		
		todo_add_send(Rsignal.camerasetting, 1);
		todo_add_sprite(spr_radiance_focus);
		todo_add_sleep(30);
		
		todo_add_signal(Rsignal.swordtoploop);
		todo_add_sleep(20);
	#endregion

todo_edit(motion[Rmotion.last2]);
	#region
		todo_add_sprite(spr_radiance_focus);
		todo_add_sleep(10);
		todo_add_send(Rsignal.camerasetting, 0);
		
		for(var i = 11; i < 16; i++)
		{
			todo_add_sleep(10);
			todo_add_send(Rsignal.addplatform, i);
		}
		var sz = ds_list_size(platformx);
		for(var i = 16; i < sz; i++)
			todo_add_send(Rsignal.addplatform, i);

		todo_add_send(Rsignal.lastlaser, 1);
		todo_add_sleep(60);

		var i = 3;
		for(; i < 10; i++)
		{
			todo_add_send(Rsignal.removeplatform, i);
			todo_add_sleep(15);
		}
		for(; i < 22; i++)
		{
			todo_add_send(Rsignal.removeplatform, i);
			todo_add_sleep(50);
		}
		todo_add_send(Rsignal.openphase, 3);
	#endregion

todo_edit(motion[Rmotion.phase1end]);
	#region
		todo_add_sprite(spr_radiance_falldown1);
		todo_add_sleep(5);
		todo_add_sprite(spr_radiance_falldown);

		todo_add_sleep(130);
		todo_add_send(Rsignal.camerashake, 2, 120);
		
		todo_add_sleep(120);
		todo_add_send(Rsignal.dreampart);
		todo_add_send(Rsignal.camerafade, 40, 0.75);
		todo_add_send(Rsignal.camerashake, 8, 0);
		
		todo_add_sleep(1);
		todo_add_sound(snd_radiance_teleport_up);
		todo_add_sprite(spr_empty);
		todo_add_send(Rsignal.camerasetting, 0);

		todo_add_sleep(40);
		for(var i = 0; i < 11; i++)
		{
			todo_add_sleep(max(40 - i*8, 5));
			todo_add_send(Rsignal.addplatform, i);
		}
		todo_add_send(Rsignal.openphase, 2);
	#endregion

todo_edit(motion[Rmotion.phase2enter]);
	#region		
		todo_add_send(Rsignal.removeplatform, 0);
		todo_add_sleep(30);
		
		todo_add_send(Rsignal.removeplatform, 1);
		todo_add_send(Rsignal.camerasetting, 2);
		todo_add_sleep(30);
		
		
		todo_add_send(Rsignal.removeplatform, 2);
		todo_add_send(Rsignal.camerashake, 2, 60);
		todo_add_sleep(60);
		
		todo_add_send(Rsignal.camerashake, 8, 2);
		todo_add_send(Rsignal.camerafade, 5, 0.6);
		todo_add_signal(Rsignal.tele);
		todo_add_sound(snd_radiance_laser_burst);
		todo_add_send(Rsignal.showhp, 1);
		todo_add_sprite(spr_radiance_idle);
		
		todo_add_send(Rsignal.setdeadline, 2592);
		todo_add_sleep(48);

		todo_add_send(Rsignal.todoplay, Rmotion.tele);
	#endregion


todo_edit(motion[Rmotion.die]);
	#region
		todo_add_send(Rsignal.camerafade, 40, 0.8);
		todo_add_send(Rsignal.camerashake, 12, 2);
		todo_add_signal(Rsignal.die);
		todo_add_sleep(70);

		todo_add_send(Rsignal.dreamspread, 1);
		todo_add_send(Rsignal.camerashake, 6, 500);
		todo_add_sleep(30);
		todo_add_send(Rsignal.camerashake, 8, 500);
		todo_add_sleep(30);
		todo_add_send(Rsignal.camerashake, 10, 500);
		todo_add_sleep(30);
		todo_add_send(Rsignal.camerashake, 12, 500);
		todo_add_sleep(30);
		todo_add_send(Rsignal.camerashake, 14, 500);

		todo_add_signal(Rsignal.die2);
	#endregion
	
	
	
	
	
	
	
	
	
	
	