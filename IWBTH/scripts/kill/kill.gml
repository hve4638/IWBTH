///@argu spd
///@argu dir
if (!instance_exists(obj_player) || is_invincible())
{
	cout("!감나빗");
	return false;
}

if argument_count > 0
	obj_player.force_spd = argument[0];

if argument_count > 1
	obj_player.force_dir = argument[1];

scr_player_kill();	
return true;