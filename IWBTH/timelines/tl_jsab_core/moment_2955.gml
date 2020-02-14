///@desc laser
tg_on[4] = true;
tg_idx[4] = 0;
alarm_trigger(100, screenshake, [4, 55], false);

with(instance_create_layer(room_width div 2, room_height div 2, L_BELOW, obj_jsabwarning_block))
{
	life_create(100);
	ins_life = 50;
	length = 5;
	thick = 5;
	angle_add = 10;
}