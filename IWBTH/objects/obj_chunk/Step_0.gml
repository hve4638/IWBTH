hspd = clamp(hspd + hspd_add, hspd_min, hspd_max);
image_angle += angle_add;

x += hspd * hspd_sign
echo_self(10, true);


if onreflect && 0 < reflect_cnt
{
	if x < x_min || x_max < x
	{
	    hspd_sign = -hspd_sign;
	    reflect_cnt--;
	}
}
else if bbox_right < x_min - 64 || x_max + 64 < bbox_left
	instance_destroy();

screenshake(2, 1);