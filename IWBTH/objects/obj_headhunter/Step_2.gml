if onhealth
{
	drawhp += (hp - drawhp) / 10;
	
	bossbar(drawhp/maxhp);
}

if onlook
	look = (x < Player.x ? 1 : -1);

image_xscale = look * abs(image_xscale);

if sprite_index == spr_headhunter_laser_focus
{
	var d, m;
	m = image_number - 1;
	
	if focus_dir == 90
		image_index = m;
	else if focus_dir == 270
		image_index = 0;
	else
	{
		d = modulo(focus_dir + 90, 180);
		if angle_signx(focus_dir) == -1
			d = 180 - d;

		image_index = d/180 * m;
	}
}

switch(sprite_index)
{
case spr_headhunter_rolling:
case spr_headhunter_gunrotate:
case spr_headhunter_jump:
	echo_self_previous(2, 15, [0.05, 0], c_purple, 1.0);
break;
}


if instance_exists(laser_obj)
{
	with(laser_obj)
	{
		var i = dsin(life_idx * 25);
		image_blend = make_color_hsv(45, value_merge(0, 255, i), 255);
	}
}

//hspd = 0;
if ongrav
	vspd += grav;

time_idx++;