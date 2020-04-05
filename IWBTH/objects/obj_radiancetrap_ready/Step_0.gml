life_step();

if time_idx == on_time
	ontrap = true;

if time_idx == off_time
	ontrap = false;

if ontrap
	trap_y -= 6;
else
	trap_y += 8;

trap_y = clamp(trap_y, 0, 64);
var yy = y + trap_y;
with(trap_ins)
{
	y = yy;
}

image_alpha = min(image_alpha + 0.05, 1.0);