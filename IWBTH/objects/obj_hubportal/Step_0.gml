onplayer = place_meeting(x, y, obj_player);

if onplayer && enable && !instance_exists(obj_enterstage)
{
	if button_press(Input.up)
	{
		if enter_instant
		{
			enable_keyinput(false);
			alarm_trigger(100, enable_keyinput, true, true);
			bossmeet(stageindex, false);
			
			room_goto_alarm(goto, 100);
			save_room(goto);
		
			global_fade_set(0, 0, c_white);
			global_fade_set(1.0, 75, c_white);
			
			if oncleardata
			{
				stage_time[stageindex] = 0;
				stage_death[stageindex] = 0;
			}
			
			sv_hubx = obj_player.x;
			sv_huby = obj_player.y;
			enable = false;
		}
		else
			with(instance_create_layer(0, 0, L_SYS, obj_enterstage))
			{
				name = other.name;
				goto = other.goto;
				isclear = other.isclear;
				stageindex = other.stageindex;
			}
	}
}

if oneffect && time_idx mod 20 == 0
	particle_emit(Particle.radianceportal, bbox_left - 64, bbox_right + 64, bbox_bottom - 2, bbox_bottom + 2, 1);

time_idx++;

if onplayer
	show_alpha += 0.05;
else
	show_alpha -= 0.05;

show_alpha = clamp(show_alpha, 0, 1.0);