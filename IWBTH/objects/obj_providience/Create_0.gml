maxhp = 320;
hp = maxhp;
drawhp = 0;
onhealth = false;

hspd_add = 0;
hspd_dec = 1;
hspd = 0;
vspd = 0;
walkspd = 5;
dashspd = 8;

onlook = true;
ex_todo = no;

damage_ins = noone;
state = StateP.normal;

nextdelay = 0;
onabsorb = false;
hspd_move = 0;

data = data_create(obj_data_providience)
motion = data.motion;
nextspr = data.nextspr;
dealspr = data.dealspr;

floory = 448;

rand_create(motion[0], motion[1], motion[2], motion[4]);

/*
0 휘두르기
1
2
3
4
5 장판
*/
enum StateP {
	normal,
	idle,
	walk,
	dash,
	attack
}
//scr_providience_motion()
/*
todolog = todo_debug(motion[0]);
todolog_str = "";
for(var i = 0; i < ds_list_size(todolog); i++)
	todolog_str += strmerge(i, ":", todolog[| i]);
clipboard_set_text(todolog_str);