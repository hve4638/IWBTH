ds_init();
maxhp = 250;
hp = maxhp;
drawhp = 0;

onhealth = false;

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

<<<<<<< HEAD
oneyeshine = false;
eyeshine_type = 0;
eyeshine_alpha = 0.0;

=======
>>>>>>> parent of 6cb4623... Radiance 1페이즈 패턴
sword360_list = list_create();
swordtop_list = list_create();

next_attack = no;

onroar = false;
roar_idx = 0;

platformpos_x = array_create(30);
platformpos_y = array_create(30);

rand_create(Rmotion.laser, Rmotion.sword360, Rmotion.swordtop, Rmotion.swordside, Rmotion.laserall, Rmotion.missile);

sprite_change(spr_radiance_idle);

depth += 1;

array_timeline_create(3, "scr_radiance_");

data_create(obj_data_radiance);