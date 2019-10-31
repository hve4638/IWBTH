frozen = false;
jump = 8.5;
jump2 = 7;
grav = 0.4;
hspd = 0;
vspd = 0;

djump = 1;
max_hspd = 3;
max_vspd = 9;
onPlatform = false;

onlook = false;
look = 1;

left = false;
right = false;
inputp = 0;

maxhp = 1;
hp = 1;

onground = false;
jumpbuffer = 0;
shootdelay = 0;
shootdelay_max = 7;

candash = false;
dashdelay = 0;
dashdelay_max = 15;

dashdir = 0;
dashlen = 6;
dashtime = 0;

idxspr_idle = spr_player_idle;
idxspr_run = spr_player_run;
idxspr_jump = spr_player_jump;
idxspr_fall = spr_player_fall;
idxspr_slide = spr_player_sliding;
idxspr_dash = spr_player_dash;

tile_collision = layer_tilemap_get_id(layer_get_id(L_BLOCK));

offset_top = abs(bbox_top - y);
offset_bottom = abs(y - bbox_bottom);
offset_left = abs(bbox_left - x);
offset_right = abs(x - bbox_right);

image_speed = 0.2;