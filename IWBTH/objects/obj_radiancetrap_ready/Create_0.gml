life_create(50);
ontrap = false;
trap_p = ontrap;

sprite_change(spr_radiancetrap, 2, 0);
image_xscale = 0.5;
image_yscale = 0.5;
image_alpha = 0;

off_time = no;
on_time = no;

time_idx = 0;

trap_ins = instance_create_layer(x, y + 64, L_BELOW, obj_radiancetrap);
with(trap_ins)
{
	subor_ins = other.id;
	image_xscale = other.image_xscale;
	image_yscale = other.image_yscale;
}

trap_y = 64;
