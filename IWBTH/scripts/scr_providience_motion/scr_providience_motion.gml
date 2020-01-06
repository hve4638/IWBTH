var dt;
motion[0] = todo_create(); //3번배기 
motion[1] = todo_create(); //휘두르며 장판생성
motion[2] = todo_create(); //내려찍기 
motion[3] = todo_create(); //검꽂고 레이져 
motion[4] = todo_create(); //검기
motion[5] = todo_create(); //검꽂고 넓은장판
motion[6] = todo_create(); //텔포후찍기
motion[7] = todo_create(); //2번배고 내려찍기
motion[8] = todo_create(); //검기후 장판
motion[9] = todo_create(); //사망모션

///Signal
//-1 ex_todo
//-2 onlook
//-3 state
//-4 ex_todo reset
#region 1phase
todo_edit(motion[0]);
	todo_add_send(-1, 1);
	todo_add_sprite(spr_providience_idle2);
	todo_add_sleep(15);

	todo_add_sprite(spr_providience_ready10);
	todo_add_sleep(10);

	todo_add_send(-2, 0);
	todo_add_nope();
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

todo_edit(motion[1]); //휘두르며 장판
	todo_add_send(-1, 5);
	todo_add_send(-2, false);
	todo_add_send(-6, false);
	todo_add_sprite(spr_providience_ready10);
	todo_add_sleep(7);
	
	dt = sprite_frame(spr_providience_attack20);
	todo_add_sprite(spr_providience_attack20);
	todo_add_sleep(dt*3);
	
	todo_add_sound(snd_slash);
	todo_add_send(1, 1);
	
	todo_add_sleep(25);
	todo_add_signal(-4);
	todo_add_nope();

todo_edit(motion[2]); //내려찍기
	todo_add_send(-1, 4);
	todo_add_send(-2, true);
	todo_add_signal(1);
	
	todo_add_sprite(spr_providience_ready30);
	todo_add_sleep(7);

	dt = sprite_frame(spr_providience_attack30);
	todo_add_sprite(spr_providience_attack30);
	todo_add_send(-2, false);
	
	todo_add_sleep(dt*4);
	
	todo_add_sound(snd_effect3);
	todo_add_sleep(40);
	
	todo_add_signal(-4);

todo_edit(motion[3]); //레이저
	todo_add_send(-1, 2);
	todo_add_send(-2, false);
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
	todo_add_sleep(50);
	todo_add_signal(-4);

todo_edit(motion[4]) //검기
	todo_add_send(-1, 3);

	todo_add_sprite(spr_providience_ready11);
	todo_add_sleep(15);
	
	todo_add_send(-10, 1, 10, 2);
	todo_add_sleep(15);
	
	dt = sprite_frame(spr_providience_attack11);
	todo_add_sprite(spr_providience_attack11);
	todo_add_sleep(dt*2);

	todo_add_signal(1);
	todo_add_sound(snd_slash);
	todo_add_sleep(30);
	
	todo_add_signal(-4);

todo_edit(motion[5]); //전체장판
	todo_add_send(-1, 6);
	todo_add_send(-2, false);
	todo_add_send(-5, true);
	dt = sprite_frame(spr_providience_down);
	todo_add_sprite(spr_providience_down);
	todo_add_sleep(dt * 6 -1);

	todo_add_sprspd(0);
	todo_add_sleep(6);
	
	todo_add_sprspd(1);
	todo_add_sleep(dt);
	todo_add_send(-5, false);
	
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
	todo_add_sleep(50);
	todo_add_signal(-4);


todo_edit(motion[6]); //텔레포트후 찍기
	todo_add_send(-1, 4);
	todo_add_send(-2, false);
	todo_add_signal(-11);
	
	todo_add_sprite(spr_providience_ready30);
	todo_add_sleep(10);

	dt = sprite_frame(spr_providience_attack30);
	todo_add_sprite(spr_providience_attack30);
	todo_add_send(-2, false);
	todo_add_sleep(dt*4);
	
	todo_add_sound(snd_effect3);
	todo_add_sleep(30);
	
	todo_add_signal(-4);
#endregion

todo_edit(motion[7]);
	todo_add_send(-1, 1);
	todo_add_sprite(spr_providience_idle2);
	todo_add_sleep(15);

	todo_add_sprite(spr_providience_ready10);
	todo_add_sleep(10);

	todo_add_send(-2, 0);
	todo_add_nope();
	dt = sprite_frame(spr_providience_attack10);
	todo_add_sprite(spr_providience_attack10);
	todo_add_sleep(dt);

	todo_add_sound(snd_slash);
	
	todo_add_send(1, 15);
	todo_add_sleep(25 - dt);

	dt = sprite_frame(spr_providience_attack11);
	todo_add_sprite(spr_providience_attack11);
	todo_add_sleep(dt);

	todo_add_send(1, 14);
	todo_add_sound(snd_slash2);
	todo_add_sleep(15 - dt);

	todo_add_send(-1, 4);
	todo_add_signal(1);
	
	todo_add_sprite(spr_providience_ready30);
	todo_add_sleep(2);

	dt = sprite_frame(spr_providience_attack30);
	todo_add_sprite(spr_providience_attack30);
	todo_add_send(-2, false);
	todo_add_sleep(dt*4);
	
	todo_add_sound(snd_effect3);
	todo_add_sleep(25);

	todo_add_send(-4);
	todo_add_nope();

todo_edit(motion[8]) //검기
	todo_add_send(-1, 3);

	todo_add_sprite(spr_providience_ready11);
	todo_add_sleep(15);
	
	todo_add_send(-10, 1, 10, 2);
	todo_add_sleep(15);
	
	dt = sprite_frame(spr_providience_attack11);
	todo_add_sprite(spr_providience_attack11);
	todo_add_sleep(dt*2);

	todo_add_signal(1);
	todo_add_sound(snd_slash);
	todo_add_sleep(15);
	
	todo_add_send(-1, 5);
	todo_add_send(-2, false);
	todo_add_send(-6, false);
	todo_add_sprite(spr_providience_ready10);
	todo_add_sleep(7);
	
	dt = sprite_frame(spr_providience_attack20);
	todo_add_sprite(spr_providience_attack20);
	todo_add_sleep(dt*3);
	
	todo_add_sound(snd_slash);
	todo_add_send(1, 1);
	
	todo_add_sleep(25);
	todo_add_signal(-4);
	todo_add_nope();


todo_edit(motion[9]); //사망모션
	todo_add_send(-2, false);
	todo_add_sleep(100);
	dt = sprite_frame(spr_providience_down);
	todo_add_sprite(spr_providience_down);
	todo_add_sleep(70);
	
	todo_add_signal(-20);

	todo_add_sleep(10);
	todo_add_signal(-100);
	todo_add_signal(-4);