var bbox_side;

bbox_side = vspd > 0 ? bbox_bottom : bbox_top;
if tilemap_get_at_pixel(tile_collision, bbox_left, bbox_side + vspd)
|| tilemap_get_at_pixel(tile_collision, bbox_right, bbox_side + vspd)
{
	if vspd > 0
	{
		y = y - (y mod 32) + 32 - (bbox_bottom - y);

		onground = true;
	}
	else
		y = y - (y mod 32) - (bbox_top - y);

	vspd = 0;
}


bbox_side = hspd > 0 ? bbox_right : bbox_left;
if tilemap_get_at_pixel(tile_collision,bbox_side + hspd,bbox_top)
|| tilemap_get_at_pixel(tile_collision,bbox_side + hspd,bbox_bottom - 1)
{
	if hspd > 0
		x = x - (x mod 32) + 31 - (bbox_right - x);
	else
		x = x - (x mod 32) - (bbox_left - x);

	hspd = 0;
}

x += hspd;
y += vspd;