life_step();

if !instance_exists(obj_player)
	ontarget = false;

if time_idx > 100
	ontarget = false;

echo_self(3, [0.15, 0]);

if time_idx > 23 && !cancollision && !place_meeting(x, y, obj_radianceplatform)
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