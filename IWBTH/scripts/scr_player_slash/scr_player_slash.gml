with(precreate(x + look * 4, y - 5, L_ABOVE))
{
	image_speed = 0.5;
	image_xscale = 1.3 * other.look;
	image_yscale = 1.3;
	look = other.look;
	
	changed(obj_slash);
}

slash_delay = slash_delay_max;
