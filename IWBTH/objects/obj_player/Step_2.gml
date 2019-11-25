if place_meeting(x,y,obj_killer)
	kill();

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
		echo_self_pos(x - i*sign(hspd), y, 10 + dashtime div 2, 1, c_white, 0.25);

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


#region escape
if escapetry
{
	escape_alpha = min(escape_alpha+0.05, 1.0);
	escape_idx++;
}
else
{
	escape_alpha = max(escape_alpha-0.1, 0.0);
	escape_idx = max(0, escape_idx - 2);
	escape_blureffect_alpha = max(0, escape_blureffect_alpha - 0.04);
}

if escape_time < escape_idx
{
	particle_emit(Particle.escape_try2,x-20,x+20,bbox_bottom-6,bbox_bottom+3, 75);
	
	with(instance_create_depth(0, 0, 0, obj_goto))
	{
		alarm[0] = 175;
		goto = rm_hub;
	}
	
	with(sys_camera)
		blur_alpha = other.escape_blureffect_alpha;

	//screenshake(4, 2);
	global_fade_set(1.0, 75, c_white);
	instance_destroy();
}

if 0<escape_idx && escapetry
{
	if escape_idx < 50
	{
		if life_idx mod 5 == 0
			particle_emit(Particle.escape_ready,x-18,x+18,bbox_bottom-1,bbox_bottom+1,1);
	}
	else if escape_idx == 50
	{
		particle_emit(Particle.escape_effect, x-64, x+64, y-32, y+8, 14);
		screenshake(6, 3);
	}
	else if escape_idx > 50
	{
		particle_emit(Particle.escape_try,x-20,x+20,bbox_bottom-3,bbox_bottom+3,5);
		
		var p = (escape_idx-50) / 100;
		var t = round(value_merge(1,6,p));
		
		escape_blureffect_alpha = min(0.9, escape_blureffect_alpha + 0.007);
		if life_idx mod 2 == 0
			particle_emit(Particle.escape_try2,x-20,x+20,bbox_bottom-6,bbox_bottom+3, t);
	}
}
#endregion


if onground
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