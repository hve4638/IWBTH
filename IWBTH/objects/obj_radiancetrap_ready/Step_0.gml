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

if life_idx < 20
	image_alpha = life_idx / 20;
else if life - life_idx < 20
	image_alpha = 1 - (life - life_idx / 20)