life_create(50);

enum JsabCreate {
	instant = 0,
	piston,
	laser,
	bigger,
	smaller,
	bounce,
}

enum JsabDestroy {
	instant = 0,
	piston,
	laser,
	smaller,
}

type = 0;
angle_add = 0;
angle_add = 0;

length = image_yscale;
thick = image_xscale;

onbounce = false;
bounce_cycle = 50;
bounce_range = 0.7;
bounce_index = 0;
bounce_speed = 1;

image_xscale = 0;
image_yscale = 0;
image_alpha = 1;
white_time = 2;
white_start = 5;

create_type = JsabCreate.instant;
destroy_type = JsabDestroy.instant;
create_time = 3;
destroy_time = 3;

time_idx = 0;