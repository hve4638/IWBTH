x += hspd;
y += vspd;

time_idx++;

if x < -256 || x > room_width + 256
	instance_destroy();