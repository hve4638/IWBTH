var size = arr_size(tg_on);

for(var i = 0; i < size; i++)
{
	if tg_on[i]
	{
		var idx = tg_idx[i]++;
		var scr = asset_get_index("scr_jsabtg" + string(i));
		
		if script_exists(scr)
			script_execute(scr, idx);
	}
}

if keyboard_check_pressed(ord("Y"))
	tg_on[0] = true;