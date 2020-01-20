if onground
	vspd = - 0.6;

hspd += sign(other.look) * 3;

hit += other.damage;

image_index = 0;
image_speed = 0.65;

instance_destroy(other);