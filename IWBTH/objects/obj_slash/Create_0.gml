damage_ins = instance_create(x, y, obj_damagebox);
damage = 5;

var bx, by, w, h;
bx = bbox_left;
by = bbox_top;
w = bbox_right - bbox_left;
h = bbox_bottom - bbox_top;

with(damage_ins)
{
	x = bx;
	y = by;
	image_xscale = w;
	image_yscale = h;

	look = other.look;
}