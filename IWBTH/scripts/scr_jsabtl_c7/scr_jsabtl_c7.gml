///@argu scale
var s = argument_count > 0 ? argument[0] : 5;

with(instance_create_layer(room_width div 2, room_height div 2, L_BELOW, obj_jsabwarning_block))
{
	life_create(100);
	ins_life = 55;
	length = s;
	thick = s;
	angle_add = 10;
}