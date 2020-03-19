with(obj_dragun)
{
	onhealth = true;
	hp = maxhp;
	show_intro(64, view_h - 64, spr_intro_dragun);
	bgm(snd_dragun, true);
		
	scr_dragun_next();
	alarm[0] = 100;
	dragun[? DragunParts.head].x = room_width div 2;
}