life_create(50);

enum JsabCreate {
	instant = 0,
	piston,
	laser,
	bigger,
	smaller,
}

enum JsabDestroy {
	instant = 0,
	piston,
	laser,
	smaller,
}

add_angle = 0;

length = image_yscale;
thick = image_xscale;

image_xscale = 1;
image_yscale = 1;
image_alpha = 1;
white_time = 2;
white_start = 5;

create_type = JsabCreate.instant;
destroy_type = JsabDestroy.instant;
create_time = 3;
destroy_time = 3;

time_idx = 0;