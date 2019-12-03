maxhp = 320;
hp = maxhp;
drawhp = 0;
onhealth = false;

hspd_add = 0;
hspd_dec = 0.5;
hspd = 0;
vspd = 0;

damage_ins = noone;

nextspr = ds_map_create();
nextspr[? spr_providience_attack10] = spr_providience_ready11;
nextspr[? spr_providience_attack11] = spr_providience_ready10;
nextspr[? spr_providience_attack30] = spr_providience_ready31;
nextspr[? spr_providience_seat0] = spr_providience_seat1;

dealspr = ds_map_create();
dealspr[? spr_providience_attack00] = spr_mask_providience_attack00;
dealspr[? spr_providience_attack10] = spr_mask_providience_attack10;
dealspr[? spr_providience_attack11] = spr_mask_providience_attack11;
dealspr[? spr_providience_attack20] = spr_mask_providience_attack20;
dealspr[? spr_providience_attack30] = spr_mask_providience_attack30;

idxspr_attack0_0 = spr_providience_ready10;
idxspr_attack0_1 = spr_providience_attack10;
idxspr_attack0_2 = spr_providience_attack11;
idxspr_attack1_0 = spr_providience_ready30;
idxspr_attack1_1 = spr_providience_attack30;

rand_create(tl_providience01, tl_providience02);

state = State.normal;

enum State {
	normal,
	attack
}

enum Todo {
	spr,
	img,
	imgspd,
	sleep
}


motion[0] = todo_create();
todo_destroy(motion[0]);
todo_add(motion[0], Todo.imgspd, 1);
todo_add(motion[0], Todo.spr, 0);
todo_add(motion[0], Todo.img, 0);
todo_add(motion[0], Todo.sleep, 5);
//todo_act(a);