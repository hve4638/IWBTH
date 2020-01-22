frozen = false;
jump = 8.5;
jump2 = 7;
grav = 0.4;

maxhp = 1;
hp = 1;

slideready = false
onwalljump = false;
onground = false;
onPlatform = false;
move_ignore = 0;
djump = 1;

left = false;
right = false;
inputp = 0;

hspd = 0;
vspd = 0;
max_hspd = 3;
max_vspd = 9;
hspd_slide = 0;
vspd_slide = 0;
hspd_dec = 0.5;
vspd_dec = 0.5;

onlook = false;
look = 1;

//Involved in blood movement
force_spd = 0;
force_dir = 0;

#region attack&jump&dash
jumpbuffer = 0;
attackdelay = 0;
attackdelay_gun = 7;
attackdelay_sword = 13;
attacktype = Attacktype.gun;

slash_delay = 0;
slash_delay_max = 3;

candash = false;
dashdelay = 0;
dashdelay_max = 30;

dashdir = 0;
dashlen = 6;
dashtime = 0;
#endregion

#region escape
canescape = true;
escapetry = false;
escape_idx = 0;
escape_time = 175;
escape_alpha = 0;
escape_blureffect = false;
escape_blureffect_alpha = 0;
#endregion

tile_collision = tilemap_id(L_BLOCK);

idxspr_idle = spr_player_idle;
idxspr_run = spr_player_run;
idxspr_jump = spr_player_jump;
idxspr_fall = spr_player_fall;
idxspr_slide = spr_player_sliding;
idxspr_dash = spr_player_dash;

image_speed = 0.2;
mask_index = spr_player_mask;

life_idx = 0;