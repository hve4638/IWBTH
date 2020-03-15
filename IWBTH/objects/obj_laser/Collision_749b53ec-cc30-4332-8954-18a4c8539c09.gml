if damagethick <= image_yscale
{
	var spd, dir;
	var lx, ly;
	var xx, yy;
	var dx, dy;
	var a, b;
	a = obj_player.force_spd;
	b = obj_player.force_dir;
	xx = lengthdir_x(a, b);
	yy = lengthdir_y(a, b);
	dx = lengthdir_x(laserpow, image_angle);
	dy = lengthdir_y(laserpow, image_angle);

	lx = value_merge(xx, dx, 0.75);
	ly = value_merge(yy, dy, 0.75);

	spd = pdis(lx, ly);
	dir = pdir(lx, ly);

	if killforce
		kill_force(spd, dir);
	else
		kill(spd, dir);
}