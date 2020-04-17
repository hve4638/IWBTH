if !onact
{
	if button(Input.up)
	{
		onact = true;
		savedelay = savedelay_max;
		
		instance_create_layer(other.x, other.bbox_top - 8, L_BELOW, obj_savetext);
		with(other)
			echo_self(35, [image_alpha * 0.66, 0], c_white, 0.1);
		save();
	}
}