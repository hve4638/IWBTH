maxhp = 200;
hp = maxhp;
drawhp = 0;

oninv = false;
onhealth = false;
onlook = true;

onfocus = true;
focus_dir = 0;

next_attack = no;
next_fix = no;
next_alarm = 10;

onlaserline = false;
ox = 0;
oy = -10;

laser_obj = noone;
bossphase = 0;

hspd = 0;
vspd = 0;
grav = 0.5;
ongrav = false;

onrolling = false;
rolltowall = false;
onjump1 = false;
onjump2 = false;
jump_idx = 0;
shoot_rotate = 0;

w_right = 959;
w_left = 128;
w_bottom = 448;

onboomfloor = false;
boomfloor_idx = 0;

ondash = false;
dashtime_max = 0;
dashtime = 0;
dash_dir = 0;
dash_len = 0;
dash_onkiller = false;

onlaser90 = false;
laser90_idx = 0;

dash_tox = 0;
dash_toy = 0;
dash_xp = 0;
dash_yp = 0;

time_idx = 0;
image_xscale = 2;
image_yscale = 2;

onwhiteout = false;
whiteout_alpha = 1.0;
whiteout_add = 0.0;

nextenable = false;

data = data_create(obj_data_headhunter);
rand_create();
array_timeline_create(3, "scr_headhunter_");

tile_collision = tilemap_id(L_BLOCK)