var dt;
motion[0] = todo_create();
motion[1] = todo_create();
motion[2] = todo_create();
motion[3] = todo_create();
motion[4] = todo_create();
motion[5] = todo_create();

///Signal
//-1 ex_todo
//-2 onlook
//-3 state
//-4 ex_todo reset
todo_edit(motion[0]);
	todo_add_send(-1, 1);
	todo_add_send(-2, 0);
	todo_add_send(-3, StateP.attack);

	todo_add_sprite(spr_providience_ready10);
	todo_add_sleep(10);

	dt = sprite_frame(spr_providience_attack10);
	todo_add_sprite(spr_providience_attack10);
	todo_add_sleep(dt);

	todo_add_sound(snd_slash);
	
	todo_add_send(1, 15);
	todo_add_sleep(30 - dt);

	dt = sprite_frame(spr_providience_attack11);
	todo_add_sprite(spr_providience_attack11);
	todo_add_sleep(dt);

	todo_add_send(1, 14);
	todo_add_sound(snd_slash2);
	todo_add_sleep(20 - dt);

	dt = sprite_frame(spr_providience_attack10);
	todo_add_sprite(spr_providience_attack10);
	todo_add_sleep(dt);
	
	todo_add_send(1, 13);
	todo_add_sound(snd_slash);
	todo_add_sleep(20);
	
	//todo_add_sprite(spr_providience_ready20);
	todo_add_send(-4);
	todo_add_nope();

todo_edit(motion[1]); //휘두르기
	todo_add_send(-1, 5);
	todo_add_send(-2, false);
	todo_add_send(-3, StateP.attack);
	todo_add_sprite(spr_providience_ready10);
	todo_add_sleep(7);
	
	dt = sprite_frame(spr_providience_attack20);
	todo_add_sprite(spr_providience_attack20);
	todo_add_sleep(dt*3);
	
	todo_add_sound(snd_slash);
	todo_add_send(1, 1);
	
	todo_add_sleep(50);
	todo_add_signal(-4);
	todo_add_nope();

todo_edit(motion[2]); //내려찍기
	todo_add_signal();
	todo_add_send(-1, 4);
	todo_add_send(-2, false);
	todo_add_send(-3, StateP.attack);
	todo_add_signal(1);
	
	todo_add_sprite(spr_providience_ready30);
	todo_add_sleep(7);

	dt = sprite_frame(spr_providience_attack30);
	todo_add_sprite(spr_providience_attack30);

	todo_add_sleep(dt*4);
	
	todo_add_sound(snd_effect3);
	todo_add_sleep(20);
	
	todo_add_signal(-4);

todo_edit(motion[3]); //레이저
	todo_add_send(-1, 2);
	todo_add_send(-2, false);
	todo_add_send(-3, StateP.attack);
	dt = sprite_frame(spr_providience_down);
	todo_add_sprite(spr_providience_down);
	todo_add_sleep(40);
	//cout("SLEEP:", dt, 13*dt);
	
	todo_add_sound(snd_effect3);
	todo_add_send(1, 25);
	
	todo_add_sleep(40);
	dt = sprite_frame(spr_providience_up);
	todo_add_sprite(spr_providience_up);
	todo_add_sleep(6*dt);

	todo_add_sound(snd_impact);
	todo_add_signal(-4);

todo_edit(motion[4]) //검기
	todo_add_send(-1, 3);
	todo_add_send(-3, StateP.attack);

	todo_add_sprite(spr_providience_ready11);
	todo_add_sleep(15);
	
	todo_add_send(-10, 1, 10, 2);
	todo_add_sleep(15);
	
	dt = sprite_frame(spr_providience_attack11);
	todo_add_sprite(spr_providience_attack11);
	todo_add_sleep(dt*2);

	todo_add_signal(1);
	todo_add_sound(snd_slash);
	todo_add_sleep(5);
	
	todo_add_signal(-4);

todo_edit(motion[5]); //전체장판
	todo_add_send(-1, 6);
	todo_add_send(-2, false);
	todo_add_send(-5, true);
	todo_add_send(-3, StateP.attack);
	dt = sprite_frame(spr_providience_down);
	todo_add_sprite(spr_providience_down);
	todo_add_sleep(dt * 6 -1);

	todo_add_send(-5, false);
	todo_add_sprspd(0);
	todo_add_sleep(6);
	
	todo_add_sprspd(1);
	todo_add_sleep(dt);
	
	todo_add_sprspd(1);
	todo_add_sound(snd_effect3);	
	todo_add_send(-10, 1, 2, 30); //sreenshake
	todo_add_sleep(30);
	
	todo_add_send(-10, 1, 10, 2);
	todo_add_send(1);
	
	todo_add_sleep(40);
	dt = sprite_frame(spr_providience_up);
	todo_add_sprite(spr_providience_up);
	todo_add_sleep(6*dt);

	todo_add_sound(snd_impact);
	todo_add_signal(-4);