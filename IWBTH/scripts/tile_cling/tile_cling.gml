///@desc tile_cling
///@param w
///@param h
var w, h, iscol;
var bbox_side;
w = argument_count > 0 ? round(argument[0]) : 0;
h = argument_count > 1 ? round(argument[1]) : 0;
iscol = false;

if w != 0
{
	bbox_side = w > 0 ? bbox_right : bbox_left;

	if tilemap_get_at_pixel(tile_collision,bbox_side + w,bbox_top) && tilemap_get_at_pixel(tile_collision,bbox_side + w,bbox_bottom - 1)
		iscol = true;
}

if h != 0
{
	bbox_side = h > 0 ? bbox_bottom : bbox_top;

	if tilemap_get_at_pixel(tile_collision, bbox_left, bbox_side + h) && tilemap_get_at_pixel(tile_collision, bbox_right, bbox_side + h)
		iscol = true;
}

return iscol;