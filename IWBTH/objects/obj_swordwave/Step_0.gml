life_step();

hspd = clamp(hspd + hspd_add, hspd_min, hspd_max);

if is_invincible()
	image_alpha = 0.3;
else
	image_alpha = 1;

x += hspd * hspd_sign
echo_self(4, true);

screenshake(2, 1);

if bbox_right + 64 < 0 || room_width < bbox_left - 64
	instance_destroy();
