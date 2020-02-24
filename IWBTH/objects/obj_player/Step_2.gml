//if place_meeting(x,y,obj_killer)
//	kill();

if dashtime <= 0
{
	if !candash
		candash = onground || on_platform;

	dashdelay--;
}
else
{
	var xs = image_xscale;
	image_xscale *= look;
	
	for(var i = 0; i < abs(hspd); i++)
		echo_self_pos(x - i*sign(hspd), y, 10 + dashtime div 2, c_white, 1.0, [0.25, 0]);

	image_xscale = xs;
}

if slash_delay <= 0
	max_hspd = min(max_hspd + 1, 3);
else
{
	slash_delay--;
	max_hspd = 1;
	vspd *= 0.25;
}

if hspd_slide != 0
{
	if abs(hspd_slide) < hspd_dec
		hspd_slide = 0;
	else if 0 < hspd_slide
		hspd_slide -= hspd_dec;
	else if 0 > hspd_slide
		hspd_slide += hspd_dec;
}

scr_player_escape();


force_spd = 2*pdis(hspd,vspd);
force_dir = pdir(hspd,vspd);

if onground || on_platform
	slideready = false;

if 0 > bbox_left
	x = abs(bbox_left - x);

if room_width < bbox_right
	x = room_width - abs(bbox_right - x);

if room_height + 32 < bbox_top
{
	kill();
}

move_ignore = max(move_ignore - 1, 0);
attackdelay = max(attackdelay - 1, 0);

life_idx++;