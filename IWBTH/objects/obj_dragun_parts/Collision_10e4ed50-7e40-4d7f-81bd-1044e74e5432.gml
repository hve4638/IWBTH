if dealto == noone || !dealto.onhealth
	exit;

var d = other.damage;
with(dealto)
{
	if !onlastpattern && hp/maxhp <= lp_enterp
		break;

	if !onlastpattern
		hp = max(hp - d * armor, maxhp * lp_enterp);
	else
		hp = hp - d * armor;

	if hp <= 0 
	{
		bgm();
		bossbar();
		onhealth = false;
	
		sfx(snd_lasthit);
		isdie = true;

		todo_stop();
		camera_fade_set(1.0, 0, c_white);
		alarm_trigger(35, camera_fade_set, [0.0, 75, c_white]);
		alarm_trigger(250, scr_gotostageresult);
		
		with(obj_danmaku)
			instance_destroy();
		screenshake(20, 1);
			
		onlastpattern = false;
		head_free =false;
		dragun_set(dragun, st_death, no);
		dragun[? DragunParts.head].image_speed = 0.4;
		isdie = true;
		head_free = false;
		head_follow = false;

		sys_global.canrestart = false;
		stageclear(2, 0);
		/*
		with(instance_create_layer(0, 0, L_SYS, obj_trigger))
		{
			trigger_condition = TriggerCondition.always;
			trigger_end = TriggerEnd.loop;

			trigger_script = scr_gotostageresult;
			goto_idx = 0;
			goto_delay = 250;
		}
		*/
		alarm[0] = -1;
	}
}

with(other)
	instance_destroy();