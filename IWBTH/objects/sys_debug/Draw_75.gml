if pause
{
	if !surface_exists(pause_surf)
	{
		var w = surface_get_width(application_surface);
		var h = surface_get_height(application_surface);
		pause_surf = surface_create(w, h);
		surface_copy(pause_surf, w, h, application_surface);
	}
	draw_surface(pause_surf, 0, 0);
}

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
}

if show_save
{
	str += strmerge("[SAVE]");
	str += strmerge("pos: ", sv_x, ",", sv_y, "  ", sv_auto);
	str += strmerge("time: ", sv_time, "  death: ", death);
	str += strmerge("hub: ", sv_hubx, ",", sv_huby);
	str += strmerge("room: ", sv_room);
	str += strmerge("look: ", sv_look);
}

draw_set_reset();
draw_set_color(c_green);
draw_text(0, 0, str);

draw_text(50, 50, strmerge(floating(time_idx, 50), " ", time_idx)); time_idx++;
draw_set_reset();

