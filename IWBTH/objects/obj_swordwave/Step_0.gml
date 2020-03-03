life_step();

hspd = clamp(hspd + hspd_add, hspd_min, hspd_max);

x += hspd * hspd_sign
echo_self(5, no, 0.0, [0.75, 0.0]);

screenshake(2, 1);

if bbox_right + 64 < 0 || room_width < bbox_left - 64
	instance_destroy();