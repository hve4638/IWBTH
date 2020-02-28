var size = array_size(tl_on);

for(var i = 0; i < size; i++)
{
	if tl_on[i]
	{
		var idx = tl_idx[i]++;
		var scr = asset_get_index("scr_aqua_" + string(i));

		if script_exists(scr)
		{
			var f = script_execute(scr, idx);

			if f == no
				tl_on[i] = false;
		}
	}
}
