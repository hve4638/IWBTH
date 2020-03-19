if escapetry
{
	escape_alpha = min(escape_alpha+0.05, 1.0);
	escape_idx++;
}
else
{
	if audio_is_playing(snd_escape_charge)
		audio_stop_sound(snd_escape_charge);
	escape_alpha = max(escape_alpha-0.1, 0.0);
	escape_idx = max(0, escape_idx - 2);
	escape_blureffect_alpha = max(0, escape_blureffect_alpha - 0.04);
}

if escape_time < escape_idx
{
	with(instance_create_depth(0, 0, 0, obj_goto))
	{
		alarm[0] = 175;
		goto = rm_hub;
	}

	with(sys_camera)
	{
		follow_type = Camtype.nothing;
		blur_alpha = other.escape_blureffect_alpha;
	}

	if audio_is_playing(snd_escape_charge)
		audio_stop_sound(snd_escape_charge);

	particle_emit(Particle.escape_try2,x-20,x+20,bbox_bottom-6,bbox_bottom+3, 75, no, 1);
	global_fade_set(1.0, 75, c_white);
	sfx(snd_escape_act);

	sys_global.canrestart = false
	save_room(rm_hub);
	
	if room != rm_hub
		if !isno(sv_hubx) && !isno(sv_huby)
			player_create_nextroom(sv_hubx, sv_huby);

	instance_destroy();
	exit;
}

if 0 < escape_idx && escapetry
{
	if escape_idx == 1
	{
		sfx(snd_escape_charge);
		sfx(snd_escape_ready);
	}

	if escape_idx < 50
	{
		if life_idx mod 5 == 0
			particle_emit(Particle.escape_ready,x-18,x+18,bbox_bottom-1,bbox_bottom+1,1);
	}
	else if escape_idx == 50
	{
		sfx(snd_escape_focus);
		particle_emit(Particle.escape_effect, x-64, x+64, y-32, y+8, 14);
		screenshake(6, 3);
	}
	else if escape_idx > 50
	{
		particle_emit(Particle.escape_try,x-20,x+20,bbox_bottom-3,bbox_bottom+3,5);
		
		var p = (escape_idx-50) / 100;
		var t = round(value_merge(7,4,p));
		var k = value_merge(96, 32, p);
		
		escape_blureffect_alpha = min(0.9, escape_blureffect_alpha + 0.007);
		if life_idx mod 2 == 0
			particle_emit(Particle.escape_try2,x-k,x+k,bbox_bottom-6,bbox_bottom+3, t);
	}
}