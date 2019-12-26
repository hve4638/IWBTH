if !bool(time_idx mod 60)
{
	var rx = irandom_range(sys_camera.camera_x1 + 32, sys_camera.camera_x2 - 32);
	var ry = 480;
	instance_create_layer(rx, ry, L_BACKGROUND, obj_rect);
}

time_idx++;