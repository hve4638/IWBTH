if hidedebug
	exit;
var str = strmerge("debug enable");

if ongod
	str += strmerge("god mode");

if on_convkey
	str += strmerge("convKey enable");

if on_teleport
	str += strmerge("teleport enable");

if on_customview
	str += strmerge("customview enable");

if on_deal
	str += strmerge("OnDeal enable");

if global.mute
	str += strmerge("Mute");

if show_info
{
	str += strmerge("fps : ", fps);
	str += strmerge("time : ", time);
	str += strmerge("death : ", death);
	str += strmerge("instance : ", instance_number(all));
	str += strmerge("lastkey : ", keyboard_lastkey);
	str += strmerge("currentstage : ", current_stage);
	str += strmerge("stagetime : ", stage_time[current_stage]);
	str += strmerge("stagedeath : ", stage_death[current_stage]);
	str += strmerge("mouse(window):", window_mouse_get_x(), window_mouse_get_y());
	with(sys_global)
	{
		str += strmerge("current music: ", audio_get_name(bgm_p), "(",bgm_ind,")", "");
		if bgm_ind != noone
			str += strmerge(" - ", audio_sound_get_pitch(bgm_ind), audio_sound_get_gain(bgm_ind));
		else
			str += NL;
	}
	with(sys_camera)
	{
		str += strmerge("camera!");
	}
}

if show_save
{
	str += strmerge("[SAVE]");
	str += strmerge("pos: ", sv_x, ",", sv_y);
	str += strmerge("hub: ", sv_hubx, ",", sv_huby);
	str += strmerge("time: ", sv_time, "  death: ", sv_death);
	str += strmerge("bossmeet: ", boss_firstmeet);
	str += strmerge("room: ", sv_room, " (", sv_auto, ")");
	str += strmerge("look: ", sv_look);
	str += strmerge("stagetime: ", sv_stagetime);
	str += strmerge("stagedeath: ", sv_stagedeath);
	str += strmerge("stageclear: ", sv_stageclear);
	str += strmerge("bossmeet: ", sv_bossmeet);
}

draw_set_reset();
draw_set_color(c_green);
draw_text(0, 0, str);

/*
draw_rectangle_color(64, 64, 64 + 64, 64 + 64, c_white, c_white, c_white, c_blue, false);
draw_rectangle_color(196, 64, 196 + 64, 64 + 64, c_white, c_white, c_blue, c_white, false);
*/