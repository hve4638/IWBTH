ds_list_clear(select_ins);
instance_destroy(parent_title);

//volum_update();
//resolution_update();
//config_write();

#region
switch(status)
{
	case Title.main:
		addselect("START GAME", Select.goto, 0, Title.game);
		addselect("OPTION", Select.goto, 0, Title.option);
		addselect("EXIT", Select.script, 0, scr_game_end);

		settitle(room_width div 2, room_height div 4, "I WANNA BE THE HOLLOW");

		select_x = room_width div 2;
		select_y = room_height div 4 * 3;
		
	break;

	case Title.game:
		addselect("SAVE", Select.game, 0, 1);
		addselect("SAVE", Select.game, 0, 2);
		addselect("SAVE", Select.game, 0, 3);
		addselect();
		addselect("BACK", Select.goto, 0, Title.main);

		select_x = room_width div 2;
		select_y = room_height div 4 * 3;
	break;

	case Title.option:
		addselect("AUDIO", Select.goto, 0, Title.option_audio);
		addselect("VIDEO", Select.goto, 0, Title.option_video);
		addselect("KEYBOARD", Select.goto, 0, Title.option_key);
		addselect();
		addselect("BACK", Select.goto, 0, Title.main);

		settitle(room_width div 2, room_height div 4, "OPTION");
		
		select_x = room_width div 2;
		select_y = room_height div 3 * 2;
	break;

	case Title.option_video:
		addselect("RESOLUTION", Select.list, "resolution", [global.resolution_name, global.resolution_index]);
		addselect("FULLSCREEN", Select.toggle, "fullscreen");
		addselect();
		addselect("RESET DEFAULTS", Select.script, 0, scr_video_reset);
		addselect("BACK", Select.goto, "configwrite", Title.option);

		settitle(room_width div 2, room_height div 4, "VIDEO");
		
		select_x = room_width div 2;
		select_y = room_height div 3 * 2;
	break;

	case Title.option_audio:
		addselect("MASTER", Select.scroll, "mastervolum", config_mastervolum);
		addselect("MUSIC", Select.scroll, "musicvolum", config_music);
		addselect("SOUND", Select.scroll, "soundvolum", config_sound);
		addselect();
		addselect("RESET DEFAULTS", Select.script, 0, scr_audio_reset);
		addselect("BACK", Select.goto, "configwrite", Title.option);

		settitle(room_width div 2, room_height div 4, "AUDIO");
		
		select_x = room_width div 2;
		select_y = room_height div 3 * 2;
	break;

	case Title.option_key:
		var xx, yy, yh;
		var x1, x2;
		x1 = room_width div 3 - 32;
		x2 = room_width div 3 * 2 + 32;
		yy = room_height div 8;
		yh = 80;

		var arr = [Input.up, Input.down, Input.left, Input.right, Input.jump, Input.attack, Input.dash, Input.swap, Input.restart, Input.escape];
		var arr2 = ["UP", "DOWN", "LEFT", "RIGHT", "JUMP", "ATTACK", "DASH", "SWAP", "RESTART", "ESCAPE"];
		var size = array_size(arr);
		for(var i = 0; i < size; i++)
		{
			xx = i mod 2 == 0 ? x1 : x2;
			addkeyset(arr2[i], arr[i], xx, yy);
			
			if i mod 2
				yy += yh;
		}		
		
		addselect("RESET DEFAULTS", Select.script, 0, config_key_def);
		addselect("BACK", Select.goto, "configwrite", Title.option);
		
		settitle(0, 0, "");
		
		select_x = room_width div 2;
		select_y = room_height - room_height div 8;
	break;
	
	default:
		addselect("BACK", Select.goto, 0, Title.main);
		
		select_x = room_width div 2;
		select_y = room_height div 2;
	break;
}
#endregion



#region set position
	draw_set_font(font_perpetua);

	var xx, yy;
	var size = ds_list_size(select_ins);
	xx = select_x;
	yy = select_y - ((STRING_HSIZE div 2) * size);

	for(var i = 0; i < size; i++)
	{
		var ins = select_ins[| i];
		with(ins)
		{
			dw_x = xx;
			dw_y = yy;
		}

		yy += STRING_HSIZE;
	}

	draw_set_reset();
#endregion
