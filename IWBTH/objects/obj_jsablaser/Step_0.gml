life_step();

if time_idx <= create_time
{
	var p = time_idx / create_time;
	switch(create_type)
	{
		case JsabCreate.piston:
			image_xscale = thick;
			image_yscale = length * p;
		break;

		case JsabCreate.expansion:
			image_xscale = thick * p;
			image_yscale = length;
		break;
	}
	var c = merge_color(c_white,c_jsab, p);
}

if time_idx >= life - destroy_type
{
	var p = time_idx / create_time;
	switch(create_type)
	{
		case JsabCreate.piston:
			image_xscale = thick;
			image_yscale = length * p;
		break;

		case JsabCreate.expansion:
			image_xscale = thick * p;
			image_yscale = length;
		break;
	}	
}