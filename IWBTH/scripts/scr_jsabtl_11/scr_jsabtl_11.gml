var idx = argument[0];

if idx == 0
{
	with(instance_create_layer(room_width div 2, 0, L_BELOW, obj_jsabwarning_block))
	{
		life_create(100);
		ins_life = 65;
		length = 4.5;
		thick = length;
		angle_add = 8;
	}
	
	alarm_trigger(100, screenshake, [10, 60], false);
}

var dir = - (idx) * 180 / 30;
if abs(dir) < 200
{
	with(jsab_laser(room_width div 2, 0, dir, 100 + idx div 2, 7))
	{
		ins_whitestart = 4;
		ins_whitetime = 6;
		ins_destroytype = JsabDestroy.instant;
		length = 1000;
		thick = 0.66;
	}
}
else
	return no;

return 0;