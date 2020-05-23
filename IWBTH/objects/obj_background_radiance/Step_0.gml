var cy = value_merge(0, rmy - bgy, (sys_camera.camera_y1 / rmy));

for(var i = 0; i < 4; i++)
{
	var ind, yy;
	ind = bg_idx[| i];
	yy = bg_y[| i];
	layer_sprite_y(ind, bg_y[| i] + cy);
	/*if i == 2
		cout(layer_sprite_get_y(ind));*/
}