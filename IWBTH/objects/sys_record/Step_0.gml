if keyboard_check_pressed(ord("P"))
	onRec = !onRec;

if keyboard_check_pressed(ord("O"))
	onPlay = !onPlay;

if keyboard_check_pressed(48) //1
{
	record_clear(record);
	record_set_target(record, obj_player);
}

if onRec
	record_rec(record);