ds_init();
maxhp = 220;
hp = maxhp;
drawhp = 0;

onhealth = false;
oninvincible = false;

ox = 0;
oy = -136;

tele_left = 416;
tele_right = room_width - 416;
tele_top = 2752 - 16;
tele_bottom = 2752 + 16;

laser360_dir = 30;

swordtop_y = 2335 + 64;

floorx_min = 407 - 16;
floorx_max = 1190 + 16;
floory = 2912;

bossphase = 0;

ontrap = false;
trap_idx = 0;
trap_type = 0; //0:left 1:right 2:either

onsword360 = false;
sword360_add = 24;
sword360_dir = 0;
sword360_delay = 0;
sword360_delay_max = 0;
sword360_idx = 0;

onswordside = false;
swordside_idx = 0;
swordside_cnt = 0;
swordside_side = 0;

onswordtop = false;
swordtop_idx = 0;

oneyeshine = false;
eyeshine_alpha = 0.0;

sword360_list = list_create();

next_attack = no;
next_fix = no;
platformlist = no;
platformlist = no;

canenter2phase = false;
canenter3phase = false;

onlastlaser = false;
lastlaser_idx = 0;

rand_create(Rmotion.laser, Rmotion.sword360, Rmotion.swordtop, Rmotion.swordside, Rmotion.laserall, Rmotion.missile);

sprite_change(spr_radiance_idle);

depth += 1;

array_timeline_create(3, "scr_radiance_");

data_create(obj_data_radiance);
instance_destroy(obj_radianceplatform);