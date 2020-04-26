#region jump refresher
var ins = instance_place(x, y, obj_refresher);
if ins != noone
{
	if ins.enable
	{
		if ins.refresh_jump
			djump = true;

		if ins.refresh_dash
		{
			dashdelay = 0;
			candash = true;
			dash_refresed = true;
		}

		with(ins)
		{
			enable = false;
			alarm[0] = 150;
		}
	}
}
#endregion

if dashtime
{
	if dashecho
		echo_self_previous(1, 10 + dashtime div 2, [0.2, 0], c_red);
	else
		echo_self_previous(1, 10 + dashtime div 2, [0.1, 0]);
}
else
	dashecho = false;

if dash_refresed
	echo_self_previous(2, 4, [0.15, 0], c_red);

if candash
	echo_self_previous(2, 4, [0.1, 0]);

if onground || on_platform
{
	slideready = false;
	dash_refresed = false;
}

if (onground || on_platform)
	dashready = true;

if dashdelay == 0 && dashready
	candash = true;

if hspd_slide != 0
{
	if abs(hspd_slide) < hspd_dec
		hspd_slide = 0;
	else 
		hspd_slide += hspd_slide > 0 ? -hspd_dec : hspd_dec;
}

#region outside
if 0 > bbox_left
	x = abs(bbox_left - x);

if room_width < bbox_right
	x = room_width - abs(bbox_right - x);

if room_height + 32 < bbox_top
	kill();
#endregion

scr_player_escape();

move_ignore = max(move_ignore - 1, 0);
attackdelay = max(attackdelay - 1, 0);
slash_delay = max(slash_delay - 1, 0);
dashdelay = max(dashdelay - 1, 0);

force_spd = 2*pdis(hspd,vspd);
force_dir = pdir(hspd,vspd);

time_idx++;