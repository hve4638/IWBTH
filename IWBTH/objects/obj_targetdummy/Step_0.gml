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

player_movement();

x += hspd;
y += vspd;