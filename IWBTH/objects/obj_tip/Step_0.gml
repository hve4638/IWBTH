on = place_meeting(x,y,obj_player);

if on xor on_p
{
	with(tscript_id)
		on = other.on;
}

on_p = on;