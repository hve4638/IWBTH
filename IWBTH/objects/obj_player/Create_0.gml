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

hspd_slide = 0;
vspd_slide = 0;
hspd_dec = 0.5;
vspd_dec = 0.5;

move_ignore = 0;

onlook = false;
look = 1;

slideready = false
onwalljump = false;

left = false; right = false;
inputp = 0;

maxhp = 1; hp = 1;

onground = false;
jumpbuffer = 0;
shootdelay = 0;
shootdelay_max = 7;

candash = false;
dashdelay = 0;
dashdelay_max = 30;

dashdir = 0;
dashlen = 6;
dashtime = 0;

escapetry = false;
escape_idx = 0;
escape_time = 75;
escape_alpha = 0;

tile_collision = layer_tilemap_get_id(layer_get_id(L_BLOCK));

idxspr_idle = spr_player_idle;
idxspr_run = spr_player_run;
idxspr_jump = spr_player_jump;
idxspr_fall = spr_player_fall;
idxspr_slide = spr_player_sliding;
idxspr_dash = spr_player_dash;

offset_top = abs(bbox_top - y);
offset_bottom = abs(y - bbox_bottom);
offset_left = abs(bbox_left - x);
offset_right = abs(x - bbox_right);

image_speed = 0.2;
mask_index = spr_player_mask;