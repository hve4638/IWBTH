ds_list_clear(selectname);
ds_list_clear(selecttype);
ds_list_clear(selectadd);
ds_list_clear(selectidx);

instance_destroy(parent_title);

fullscreen = arr[TitleArray.fullscreen];
config_mastervolum = arr[TitleArray.mastervolum] / 100;
config_music = arr[TitleArray.musicvolum] / 100;
config_sound = arr[TitleArray.soundvolum] / 100;
resolution_index = arr[TitleArray.resolution];
config_ui = arr[TitleArray.ui];

//cout("resolution:", resolution_index, "-", global.resolution_name[| resolution_index]);
resolution_update();

config_write();

switch(status)
{
	case Title.main:
	{
		addselect("START GAME", Select.goto, 0, Title.game);
		addselect("OPTION", Select.goto, 0, Title.option);
		addselect("EXIT", Select.script, 0, scr_game_end);
		
		name = "I WANNA BE THE HOLLOW";
		main_x = room_width div 2;
		main_y = room_height div 4;

		select_x = room_width div 2;
		select_y = room_height div 4 * 3 - strh/2 * ds_list_size(selectname);
		
		break;
	}
	
	case Title.game:
	{
		addselect("SAVE", Select.game, 0, 1);
		addselect("SAVE", Select.game, 0, 2);
		addselect("SAVE", Select.game, 0, 3);
		addselect();
		addselect("BACK", Select.goto, 0, Title.main);


		select_x = room_width div 2;
		select_y = room_height div 4 * 3 - strh/2 * ds_list_size(selectname);
		break;
	}

	case Title.option:
	{
		addselect("AUDIO", Select.goto, 0, Title.option_audio);
		addselect("VIDEO", Select.goto, 0, Title.option_video);
		addselect("KEYBOARD", Select.goto, 0, Title.option_key);
		addselect();
		addselect("BACK", Select.goto, 0, Title.main);

		name = "OPTION"
		main_x = room_width div 2;
		main_y = room_height div 4;
		
		select_x = room_width div 2;
		select_y = room_height div 3 * 2 - strh/2 * ds_list_size(selectname);

		break;
	}

	case Title.option_video:
	{
		addselect("RESOLUTION", Select.list, TitleArray.resolution, global.resolution_name);
		addselect("FULLSCREEN", Select.toggle, TitleArray.fullscreen);
		addselect();
		addselect("RESET DEFAULTS", Select.script, 0, scr_video_reset);
		addselect("BACK", Select.goto, 0, Title.option);

		name = "VIDEO"
		main_x = room_width div 2;
		main_y = room_height div 4;
		
		select_x = room_width div 2;
		select_y = room_height div 3 * 2 - strh/2 * ds_list_size(selectname);

		break;
	}

	case Title.option_audio:
	{
		addselect("MASTER", Select.scroll, TitleArray.mastervolum);
		addselect("MUSIC", Select.scroll, TitleArray.musicvolum);
		addselect("SOUND", Select.scroll, TitleArray.soundvolum);
		addselect();
		addselect("RESET DEFAULTS", Select.script, 0, scr_audio_reset);
		addselect("BACK", Select.goto, 0, Title.option);

		name = "AUDIO"
		main_x = room_width div 2;
		main_y = room_height div 4;
		
		select_x = room_width div 2;
		select_y = room_height div 3 * 2 - strh/2 * ds_list_size(selectname);

		break;
	}

	case Title.option_key:
	{
		var x1, x2, y1, yh;
		x1 = room_width div 3 - 32;
		x2 = room_width div 3 * 2 + 32;
		y1 = room_height div 6;
		yh = 64 + 16;
		addkeyset("UP", Input.up, x1, y1);
		addkeyset("DOWN", Input.down, x2, y1);
		y1 += yh;
		addkeyset("LEFT", Input.left, x1, y1);
		addkeyset("RIGHT", Input.right, x2, y1);
		y1 += yh;
		addkeyset("JUMP", Input.jump, x1, y1);
		addkeyset("ATTACK", Input.attack, x2, y1);
		y1 += yh;
		addkeyset("DASH", Input.dash, x1, y1);
		addkeyset("WEAPON SWAP", Input.swap, x2, y1);
		y1 += yh;
		addkeyset("RESTART", Input.restart, x1, y1);
		addkeyset("ESCAPE", Input.escape, x2, y1);
		
		
		addselect("RESET DEFAULTS", Select.script, 0, config_key_def);
		addselect("BACK", Select.goto, 0, Title.option);

		name = "";
		main_x = room_width div 2;
		main_y = room_height div 5;
		
		select_x = room_width div 2;
		select_y = room_height - room_height div 7;

		break;
	}
	
	default:
	{
		addselect("BACK", Select.goto, 0, Title.main);
		
		select_x = room_width div 2;
		select_y = room_height div 4 * 3;
		
		break;
	}
}

var dw_x, dw_y;
var size = ds_list_size(selectname);
dw_x = select_x;
dw_y = select_y;

draw_set_font(font_perpetua);
for(var i = 0; i < size; i++)
{
	var str, type, add, idx;
	str = selectname[| i];
	type = selecttype[| i];
	add = selectadd[| i];
	idx = selectidx[| i];
	
	var l = instance_create_layer(0, 0, L_SYS, obj_select);
	with(l)
	{
		self.dw_x = dw_x;
		self.dw_y = dw_y;
		self.check_w = string_width(str) + 20;
		self.check_h = string_height(str);
		self.name = str;
		self.type = type;
		
		self.arr = other.arr;
		self.idx = idx;
		
		if type == Select.goto
			goto = add;
		else if type == Select.script
			script = add;
		else if type == Select.game
		{
			save_num = add;

			if save_integrity(save_num)
			{
				var t = get_save_index(save_num);
				save_new = false;

				save_time = t[? "time"];
				save_death = t[? "death"];
			}
			else
				save_new = true;
		}
		else if type == Select.scroll
			percent = arr[idx];
		else if type == Select.list
		{
			list = add;
			list_idx = arr[idx];
		}
	}

	dw_y += string_height(str);
}

draw_set_reset();


