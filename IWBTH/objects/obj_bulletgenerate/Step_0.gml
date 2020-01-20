life_step();

var dis = point_distance(x, y, px, py);
var dir = point_direction(px, py, x, y);
var xx, yy;

while(0 < dis)
{
	var len = min(maxdis - shootdis, dis);
	var xx = lengthdir_x(len, dir);
	var yy = lengthdir_y(len, dir);

	px += xx;
	py += yy;
	shootdis += len;
	dis -= len;
	
	if maxdis <= shootdis
	{
		shootdis -= maxdis;

		with(instance_create_layer(px, py, L_ABOVE, obj_danmaku))
		{
			direction = other.shootdir + irandom_range(-6, 6);
			speed = random_range(8, 9);
			type = 1;
			//vspd_add = -0.35;
		}
	}
}
/*
shootdis = modulo(shootdis + d, maxdis);

px = x;
py = y;