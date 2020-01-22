if dealto == noone
	exit;

var d = other.damage;
with(dealto)
{
	if !onlastpattern && hp/maxhp <= 0.3
		break;

	if !onlastpattern
		hp = max(hp - d * armor, maxhp * 0.3);
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
		sys_global.fade_alpha = 1.0;
		global_fade_set(0, 150, c_white);
		
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
	
		alarm[0] = -1;
	}
}

with(other)
	instance_destroy();