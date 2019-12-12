var dt;
motion[0] = todo_create();
motion[1] = todo_create();
motion[2] = todo_create();
motion[3] = todo_create();
motion[4] = todo_create();

todo_edit(motion[0]);
	todo_add_sprite(spr_providience_ready10);
	todo_add_sleep(10);

	dt = sprite_frame(spr_providience_attack10);
	todo_add_sprite(spr_providience_attack10);
	todo_add_sleep(dt);

	todo_add_sound(vm_slash);
	todo_add_signal();
	todo_add_send(13);
	todo_add_sleep(30 - dt);

	dt = sprite_frame(spr_providience_attack11);
	todo_add_sprite(spr_providience_attack11);
	todo_add_sleep(dt);

	todo_add_sound(vm_slash2);
	todo_add_signal();
	todo_add_send(12);
	todo_add_sleep(18 - dt);

	dt = sprite_frame(spr_providience_attack10);
	todo_add_sprite(spr_providience_attack10);
	todo_add_sleep(dt);
	
	todo_add_sound(vm_slash);
	todo_add_signal();
	todo_add_send(12);
	todo_add_sleep(30);
	todo_add_nope();

todo_edit(motion[1]);
	todo_add_sprite(spr_providience_ready20);
	todo_add_sleep(5);
	todo_add_sprite(spr_providience_attack20);
	todo_add_sleep(50);
	todo_add_nope();

todo_edit(motion[2]);
	todo_add_sprite(spr_providience_ready30);
	todo_add_sleep(10);
	todo_add_sprite(spr_providience_attack30);
	todo_add_sleep(50);
	todo_add_nope();

todo_edit(motion[3]);
	dt = sprite_frame(spr_providience_down);
	todo_add_sprite(spr_providience_down);
	todo_add_sleep(13*dt);
	
	todo_add_signal();
	todo_add_send(0);
	todo_add_sleep(5);
	todo_add_nope();

todo_edit(motion[4])
	todo_add_sprite(spr_providience_ready11);
	todo_add_sleep(30);
	
	dt = sprite_frame(spr_providience_attack11);
	todo_add_sprite(spr_providience_attack11);
	todo_add_sleep(dt*2);
	todo_add_signal();
todo_edit();