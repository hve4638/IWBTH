if collision_point(x,y,obj_killer,1,0)
	scp_kill();

if dashtime <= 0
{
	if !candash
		candash = onground;

	dashdelay--;
}
else
{
	var xs = image_xscale;
	image_xscale *= look;
	
	for(var i = 0; i < abs(hspd); i++)
		echo_self_pos(x - i*sign(hspd), y, 12, 1, c_white, 0.25);

	image_xscale = xs;
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

if escapetry
{
	escape_alpha = min(escape_alpha+0.05, 1.0);
	escape_idx++;
}
else
{
	escape_alpha = max(escape_alpha-0.1, 0.0);
	escape_idx = max(0, escape_idx - 2);
}

if escape_time < escape_idx
	room_goto(rm_hub);

if onground
	slideready = false;
	
if 0 > bbox_left
	x = abs(bbox_left - x);

if room_width < bbox_right
	x = room_width - abs(bbox_right - x);

if room_height + 32 < bbox_top
	kill();

move_ignore = max(move_ignore - 1, 0);
shootdelay = max(shootdelay - 1, 0);