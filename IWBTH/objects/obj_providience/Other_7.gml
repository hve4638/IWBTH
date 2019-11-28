if ds_map_exists(nextspr, sprite_index)
{
	var idx = nextspr[? sprite_index];
	if no < idx
		sprite_change(idx);
	else
		image_speed = 0;
}