if keyboard_check_pressed(ord("P"))
	onRec = !onRec;

if keyboard_check_pressed(ord("O"))
	onPlay = !onPlay;

if keyboard_check_pressed(48) //0
{
	record_clear(record);
	record_set_target(record, obj_player);
}

if keyboard_check_pressed(49) //1
{
	cout("Write Record.");

	clipboard_set_text(record_encode(record));
}

if keyboard_check_pressed(50) //2
{
	if clipboard_has_text()
	{
		cout("Read Record.");
		record = record_decode(clipboard_get_text());
	}
}

if onRec
	record_rec(record);