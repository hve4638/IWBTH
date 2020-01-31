life_create(50);

enum JsabCreate {
	instant = 0,
	piston,
	laser,
	bigger,
}

enum JsabDestroy {
	instant = 0,
	piston,
	laser,
	smaller,
}

length = image_yscale;
thick = image_xscale;

image_xscale = 1;
image_yscale = 1;

white_time = 2;
white_start = 5;

create_type = JsabCreate.instant;
destroy_type = JsabDestroy.instant;
create_time = 3;
destroy_time = 3;

time_idx = 0;