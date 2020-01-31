if destroy_ins == noone
	exit;

with(instance_create_layer(x, y, L_ABOVE, destroy_ins))
{
	life_create(other.ins_life);

	create_type = other.ins_createtype;
	destroy_type = other.ins_destroytype;
	create_time = other.ins_createtime;
	destroy_time = other.ins_destroytime;
	thick = other.thick;
	length = other.length;
}