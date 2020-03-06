maxhp = 200;
hp = maxhp;
drawhp = 0;

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

bossphase = 0;

hspd = 0;
vspd = 0;
grav = 0.5;
ongrav = false;

onrolling = false;
rolltowall = false;
onjump1 = false;
onjump2 = false;

w_right = 959;
w_left = 128;

ondash = false;
dashtime_max = 0;
dashtime = 0;
dash_dir = 0;
dash_len = 0;

dash_tox = 0;
dash_toy = 0;
dash_xp = 0;
dash_yp = 0;

image_xscale = 2;
image_yscale = 2;

data = data_create(obj_data_headhunter);
rand_create(motion[0], motion[1], motion[2]);

tile_collision = tilemap_id(L_BLOCK)