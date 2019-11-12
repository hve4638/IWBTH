on = place_meeting(x,y,obj_player);

if on xor on_p
{
	with(tscript_id)
		on = other.on;
	
	if replay_enable
	{
		replay_on = on;
		replay_restart = false;

		if replay_on
		{
			if replay_alpha == 0
				if record_exists(replay_record)
					record_set_position(replay_record, 0);
		}
	}
}

if replay_enable
{
	if replay_on
		replay_alpha += 0.1;
	else
		replay_alpha -= 0.1;

	if record_position_end(replay_record)
	{
		replay_restart = true;
		replay_on = false;
	}
	
	if replay_restart && replay_alpha == 0
	{
		record_set_position(replay_record, 0);
		replay_restart = false;
		replay_on = true;
	}

	replay_alpha = clamp(replay_alpha, 0 , 1);
}

on_p = on;