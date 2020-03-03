///@argu stage

switch(argument[0])
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

		enter_instant = false;
		text_idx = EnterText.challenge;
	break;
	
	case 2:
		name = "High dragun";
		goto = rm_boss_dragun;
		show_holo = true;
		holo_spr = spr_holo_dragun;
		
		enter_instant = false;
		text_idx = EnterText.challenge;
	break;
	
	case 3:
		name = "Head hunter";
		goto = rm_boss_jsab;
		show_holo = true;
		holo_spr = spr_holo_headhunter;

		enter_instant = false;
		text_idx = EnterText.challenge;
	break;
	
	case 4:
		name = "Providience";
		goto = rm_boss_providience;
		show_holo = true;
		holo_spr = spr_holo_providience;
		
		enter_instant = false;
		text_idx = EnterText.challenge;
	break;
}