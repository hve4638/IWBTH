with(obj_player)
{
	djump = true;
	candash = true;
	
	if bbox_top < 0
	{
		y = (y - bbox_top);
		if vspd < 0
			vspd = 0;
	}
}