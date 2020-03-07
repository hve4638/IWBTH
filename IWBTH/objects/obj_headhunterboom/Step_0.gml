onground = tile_meeting(0, 1);

var dec = 1;
if !onground
	dec = 0.1;

if abs(hspd) < dec
	hspd = 0;
else if hspd < 0
	hspd += dec;
else if hspd > 0
	hspd -= dec;

if !onground
	vspd += grav;

if install_idx++ == install_time
{
	hspd = 0;
	vspd = 0;
	grav = 0;

	onboom = true;
	oncircle = true;
}

if onboom
{
	if boom_idx++ == boom_time
		instance_destroy();
}

if oncircle
	circle_idx = min(circle_time, circle_idx+1);


if !tile_meeting(0, 0) && !(hspd == 0 && vspd == 0)
{
	//var xx, yy;
	echo_self(30, c_red, 0.8, [1.0, 0]);

	if tile_meeting(hspd, 0) && hspd != 0
	{
		var i = sign(hspd);
		while(tile_meeting(sign(hspd), 0))
		{
			x += sign(hspd);
		
			if i != sign(--hspd)
			{
				hspd = 0;
				break;
			}
		}
		hspd = -hspd * 2 div 3;
	}

	if tile_meeting(0, vspd) && vspd > 0
	{
		var i = sign(vspd);
		while(tile_meeting(sign(vspd), 0))
		{
			x += sign(vspd);
		
			if i != sign(--vspd)
			{
				vspd = 0;
				break;
			}
		}
		vspd = - vspd * 2 div 3;
	}

	px = x;
	py = y;
	x += hspd;
	y += vspd;
}