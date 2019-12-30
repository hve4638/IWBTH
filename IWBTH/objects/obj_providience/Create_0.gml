maxhp = 250;
hp = maxhp;
drawhp = 0;
onhealth = false;

hspd_add = 0;
hspd_dec = 1;
hspd = 0;
vspd = 0;
walkspd = 5;
dashspd = 8;

onlook = true; //teleport코드 작동중에 항상 false;
ex_todo = no;
onattack = true;

damage_ins = noone;
state = StateP.normal;

onabsorb = false;
hspd_move = 0;
away_time = 0; 

//onabsorb = true;

//Alarm0 Event
next_action = ActionP.walk;
next_attack = 0;
next_fix = ActionP.nothing;
next_cnt = 0;

//teleport
on_teleport = false;
tp_x = 0;
tp_progress = 0;
tp_idx = 0;
tp_pretime = 3;
tp_posttime = 4;

data = data_create(obj_data_providience)
motion = data.motion;
nextspr = data.nextspr;
dealspr = data.dealspr;

floory = 448;

rand_create(motion[0], motion[1], motion[2], motion[3], motion[4], motion[5]);
rand_adjust(rand_get_index(motion[3]));
rand_adjust(rand_get_index(motion[5]));


enum StateP {
	normal,
	idle,
	walk,
	dash,
	attack
}

enum ActionP {
	walk,
	dash,
	attack,
	teleport,
	nothing
}
//scr_providience_motion()
/*
todolog = todo_debug(motion[0]);
todolog_str = "";
for(var i = 0; i < ds_list_size(todolog); i++)
	todolog_str += strmerge(i, ":", todolog[| i]);
clipboard_set_text(todolog_str);