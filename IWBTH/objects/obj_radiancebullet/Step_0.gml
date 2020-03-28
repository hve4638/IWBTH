life_step();



if time_idx > 150
	ontarget = false;
	
if time_idx > 50 && !cancollision
{
	var px = x;
	var py = y;
	x = clamp(x, 4, room_width - 4);
	y = clamp(y, 4, room_height - 4);

	if !tile_meeting(0, 0)
		cancollision = true;
	x = px;
	y = py;
}