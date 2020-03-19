///@argu stage
var ind = argument_count > 0 ? argument[0] : room_get_stage(room);

return bool(boss_firstmeet[ind]);