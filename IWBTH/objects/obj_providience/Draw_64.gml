draw_set_reset();
draw_set_color(c_black);
//draw_text(0, 0, );

if todo_is_playing()
{
	/*
	var td = todo_current();
	var pos = todo_get_position(td);
	var pos = todo_get_position(td);
	var delay = td[? TodoMap.delay];
	var signal = todo_signal_exists(td);
	//var value = todo_get_value(td);
5
	
	draw_set_reset();
	draw_set_color(c_black);
	var str = strmerge(signal, NL, pos, delay);
	draw_text(0, 96, str);
	*/
}
/*
draw_set_reset();
draw_set_color(c_black);
draw_text_transformed(0, 96, todolog_str, 0.5, 0.5, 0);
/*var str = "", td;

if todo_is_playing()
{
	td = todo_current();
	str += strmerge("signal: ",todo_signal(td));
	str += strmerge("pos: ",todo_get_position(td));
	str += strmerge("value: ",todo_get_value(td));
	str += strmerge("delay: ", td[? TodoMap.delay]);

	draw_set_reset();
	draw_set_color(c_black);
	draw_text(0, 96, str);
}