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
}

if time_idx >= life - destroy_type
{
	var p = (time_idx - (life - destroy_type)) / destroy_type;

	switch(create_type)
	{
		case JsabDestroy.piston:
			image_xscale = thick;
			image_yscale = length * p;
		break;

		case JsabDestroy.reduce:
			image_xscale = thick * p;
			image_yscale = length;
		break;
	}	
}