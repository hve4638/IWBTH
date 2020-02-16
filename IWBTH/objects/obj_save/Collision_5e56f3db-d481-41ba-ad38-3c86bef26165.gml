if !onact
{
	if button(Input.up)
	{
		onact = true;
		savedelay = savedelay_max;
		
		instance_create(other.x, other.bbox_top - 8, obj_savetext);
		with(other)
			echo_self(50, c_white);
		save();
	}
}