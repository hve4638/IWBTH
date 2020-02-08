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

		case JsabCreate.laser:
			image_xscale = thick * p;
			image_yscale = length;
		break;
		
		case JsabCreate.bigger:
			image_xscale = thick * p;
			image_yscale = length * p;
		break;
		
		case JsabCreate.smaller:
			image_xscale = thick * (2 - p);
			image_yscale = length * (2 - p);
		break;
		
		default:
			image_xscale = thick;
			image_yscale = length;
		break;
	}
}

if time_idx >= life - destroy_time
{
	var p = 1 - clamp((time_idx - (life - destroy_time)) / destroy_time, 0, 1);
	//cout("d: ", p);
	switch(destroy_type)
	{
		case JsabDestroy.piston:
			image_xscale = thick;
			image_yscale = length * p;
		break;

		case JsabDestroy.laser:
			image_xscale = thick * p;
			image_yscale = length;
		break;
		
		case JsabDestroy.smaller:
			image_xscale = thick * p;
			image_yscale = length * p;
		break;
		
		default:
			image_xscale = thick;
			image_yscale = length;
		break;
	}
}