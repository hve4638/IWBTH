///@desc When player invinciblity

if instance_exists(obj_player) && (obj_player.dashtime > 0 || obj_player.invin)
	return true;
	
return false;