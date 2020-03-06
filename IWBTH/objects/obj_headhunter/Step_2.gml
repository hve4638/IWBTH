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

//hspd = 0;
if ongrav
	vspd += grav;