///@argu stage
stageindex = argument[0];

switch(stageindex)
{
	case 0:
		name = "Tutorial";
		goto = rm_tutorial;
		enter_instant = true;
		text_idx = EnterText.enter;
	break;

	case 1:
		name = "Core";
		goto = rm_boss_jsab;
		show_holo = true;
		holo_spr = spr_holo_core;
		
		show_info = true;
		enter_instant = true;
		text_idx = EnterText.enter;
		isclear = stage_clear[1];
		oncleardata = true;
	break;

	case 2:
		name = "High dragun";
		goto = rm_boss_dragun;
		show_holo = true;
		holo_spr = spr_holo_dragun;

		show_info = true;
		enter_instant = true;
		text_idx = EnterText.enter;
		isclear = stage_clear[2];
		oncleardata = true;
	break;

	case 3:
		name = "Head hunter";
		goto = rm_boss_headhunter;
		show_holo = true;
		holo_spr = spr_holo_headhunter;

		show_info = true;
		enter_instant = true;
		text_idx = EnterText.enter;
		isclear = stage_clear[3];
		oncleardata = true;
	break;

	case 4:
		name = "Providience";
		goto = rm_boss_providience;
		show_holo = true;
		holo_spr = spr_holo_providience;
		
		show_info = true;
		enter_instant = true;
		text_idx = EnterText.enter;
		isclear = stage_clear[4];
		oncleardata = true;
	break;
	
	case 5:
		var n = 1;
		for(var i = 1; i <= 4; i++)
			if !stage_clear[i]
				n = 0;

		if n
		{
			name = "Radiance";
			goto = rm_boss_radiance;
			show_holo = false;
			holo_spr = spr_holo_providience;
		
			//show_info = true;
			enter_instant = true;
			text_idx = EnterText.enter;
			isclear = stage_clear[5];
			oncleardata = true;
			oneffect = true;
		}
		else
		{
			instance_destroy();
		}
	break;
}


