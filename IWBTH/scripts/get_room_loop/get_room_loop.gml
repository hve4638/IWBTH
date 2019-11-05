///@param room
var w, h, rm;
rm = room_get_name(argument[0]);

w = ds_grid_width(global.roomsound);
h = ds_grid_height(global.roomsound);

if ds_grid_value_exists(global.roomsound, 0, 1, 0, h-1, rm)
{
	var l = ds_grid_value_y(global.roomsound, 0, 1, 0, h-1, rm);
	
	return real(global.roomsound[# 2, l]);
}

return 0;