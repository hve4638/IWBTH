ds_init();
maxhp = 320;
hp = maxhp;
drawhp = 0;
onhealth = false;

hspd_add = 0;
hspd_dec = 0.5;
hspd = 0;
vspd = 0;

onlook = true;

actex = no;
actex = 1;

damage_ins = noone;

nextspr = map_create();
nextspr[? spr_providience_attack10] = spr_providience_ready11;
nextspr[? spr_providience_attack11] = spr_providience_ready10;
nextspr[? spr_providience_attack20] = no;
nextspr[? spr_providience_down] = no;
nextspr[? spr_providience_attack30] = spr_providience_ready31;
nextspr[? spr_providience_seat0] = spr_providience_seat1;

dealspr = map_create();
dealspr[? spr_providience_attack00] = spr_mask_providience_attack00;
dealspr[? spr_providience_attack10] = spr_mask_providience_attack10;
dealspr[? spr_providience_attack11] = spr_mask_providience_attack11;
dealspr[? spr_providience_attack20] = spr_mask_providience_attack20;
dealspr[? spr_providience_attack30] = spr_mask_providience_attack30;

rand_create(0, 1, 2);

state = State.normal;

enum State {
	normal,
	attack
}

enum Todo {
	spr,
	mainimg,
	subimg,
	imgspd,
	sleep,
	signal,
	send,
	nope
}

motion[0] = todo_create();
todo_add_sprite(motion[0], spr_providience_ready10);
todo_add_sleep(motion[0], 10);

todo_add_sprite(motion[0], spr_providience_attack10);
todo_add_signal(motion[0]);
todo_add_send(motion[0], 8);
todo_add_sleep(motion[0], 30);

todo_add_sprite(motion[0], spr_providience_attack11);
todo_add_signal(motion[0]);
todo_add_send(motion[0], 8);
todo_add_sleep(motion[0], 15);

todo_add_sprite(motion[0], spr_providience_attack10);
todo_add_signal(motion[0]);
todo_add_send(motion[0], 8);
todo_add_sleep(motion[0], 50);
todo_set_loop(motion[0], false);

motion[1] = todo_create();
todo_add(motion[1], Todo.spr, spr_providience_ready20, 0, 1);
todo_add(motion[1], Todo.sleep, 5);
todo_add(motion[1], Todo.spr, spr_providience_attack20, 0, 1);
todo_set_loop(motion[1], false);


motion[2] = todo_create();
todo_add(motion[2], Todo.spr, spr_providience_ready30, 0, 1);
todo_add(motion[2], Todo.sleep, 10);
todo_add(motion[2], Todo.spr, spr_providience_attack30, 0, 1);
todo_set_loop(motion[2], false);

motion[3] = todo_create();
todo_add(motion[3], Todo.spr, spr_providience_down, 0, 1);
todo_set_loop(motion[3], false);