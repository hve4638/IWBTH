maxhp = 300;
hp = maxhp;
armor = 1;
drawhp = 0;
onhealth = false;

enum stateD {
	normal,
	attack,
}

state = stateD.normal;
dragun = dragun_create();
data_create(obj_data_dragun);

var n = 5;
struct_list = array_create(n, -1);
struct_idx = array_create(n, 0);
struct_idxp = array_create(n, -1);
struct_speed = array_create(n, 1);
struct_run = array_create(n, false);
struct_lock = array_create(n, no);
smoothstruct = true;

shoottype = 0;
onlastpattern = false;
lp_enterp = 0.25;
lp_pimg = -1;
lp_delay = 0;
lp_pos = room_width div 2 + irandom_range(-400, 400);
lp_time = 0;
lp_force = 48;
lp_spd = 1;
lp_sign = 1;

isdie = false;

smoothbulletgener_l = noone;
smoothbulletgener_r = noone;
//struct_on = array_create(DragunParts.last, false);

for(var i = 0; i < DragunParts.last; i++)
	dragun[? i].dealto = id;

head_free = false;
head_follow = true;
head_follow_range = 120;
head_hspd = 0;

dragun_set(dragun, st_default);

rand_create(motion[0], motion[1], motion[2], motion[3], motion[4], motion[5]);
next_attack = noone;

dragun[? DragunParts.body].image_speed = 1;
dragun[? DragunParts.head].image_speed = 1;
dragun[? DragunParts.wings].image_speed = 1;
dragun[? DragunParts.wings].dealto = noone;
sprite_index = -1;

head_free = true;