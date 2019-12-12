maxhp = 320;
hp = maxhp;
drawhp = 0;
onhealth = false;

hspd_add = 0;
hspd_dec = 1;
hspd = 0;
vspd = 0;

onlook = true;
ex_todo = no;

damage_ins = noone;

data = data_create(obj_data_providience)
motion = data.motion;
/*motion[0] = data.motion[0];
motion[1] = data.motion[1];
motion[2] = data.motion[2];
motion[3] = data.motion[3];
motion[4] = data.motion[4];*/
nextspr = data.nextspr;
dealspr = data.dealspr;

rand_create(tl_providience01, tl_providience02, tl_providience03, tl_providience04);