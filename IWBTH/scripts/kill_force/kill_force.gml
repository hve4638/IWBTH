///@argu spd
///@argu dir
if argument_count > 0
	obj_player.force_spd = argument[0];

if argument_count > 1
	obj_player.force_dir = argument[1];

scr_player_kill();	
return true;