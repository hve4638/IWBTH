var rx, ry;
rx = hspd < 0 ? bbox_right : bbox_left;
ry = irandom_range(bbox_top, bbox_bottom);

with(instance_create_layer(rx, ry, L_ABOVE, obj_rect))
{
	vspd = irandom_range(3,6);
	life = irandom_range(15, 25);
}

repeat(partcnt - 1)
{
	rx = irandom_range(bbox_left, bbox_right);
	ry = irandom_range(bbox_top, bbox_bottom);
	with(instance_create_layer(rx, ry, L_ABOVE, obj_rect))
	{
		vspd = irandom_range(3,6);
		life = irandom_range(15, 25);
	}
}


if life < life_idx
{
	with(instance_create_layer(bbox_left, ry, L_ABOVE, obj_rect))
	{
		vspd = irandom_range(3,6);
		life = irandom_range(15, 25);
	}
	with(instance_create_layer(bbox_right, ry, L_ABOVE, obj_rect))
	{
		vspd = irandom_range(3,6);
		life = irandom_range(15, 25);
	}
	instance_destroy();
}
	
x += hspd;
y += vspd;

life_idx++;