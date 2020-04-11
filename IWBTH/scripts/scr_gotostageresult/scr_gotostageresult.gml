///@argu gameclear*
//var c = argument > 0 ? argument[0] : 0;
result_death = stage_death[current_stage];
result_time = stage_time[current_stage];

with(instance_create_layer(0, 0, L_SYS, obj_stageresult))
{
	fadd = 0.02;
	depth -= 100;
	alarm[0] = 10;
	
	//isgameclear = c;
}