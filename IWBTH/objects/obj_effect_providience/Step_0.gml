if time_idx >= next_cool
{
	var rx = irandom_range(sys_camera.camera_x1 + 32, sys_camera.camera_x2 - 32);
	var ry = 480;
	instance_create_layer(rx, ry, L_BACKGROUND, obj_rect);
	
	time_idx = 0;
	next_cool = irandom_range(10, 40);
}

time_idx++;