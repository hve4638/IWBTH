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
		todo_add_sleep(80);
		
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
		todo_add_signal(-4);
		
		todo_add_send(Rsignal.todoplay, Rmotion.tele);
	#endregion

todo_edit(motion[Rmotion.tele]);
	#region
		todo_add_sprite(spr_radiance_turn);
		dt = sprite_get_frame(spr_radiance_turn);
		todo_add_sleep(dt);
		
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
	
	
	