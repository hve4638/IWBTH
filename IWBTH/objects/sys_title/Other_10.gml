ds_list_clear(selectname);
ds_list_clear(selecttype);
ds_list_clear(selectadd);

switch(status)
{
	case Title.main:
	{
		ds_list_add(selectname, "game", "option", "exit");
		ds_list_add(selecttype, Select.goto, Select.goto, Select.script);
		ds_list_add(selectadd, Title.game, Title.option, scr_game_end);
		
		select_x = room_width div 2;
		select_y = room_height div 5 * 3;
		
		break;
	}


	case Title.option:
	{
		ds_list_add(selectname, "audio", "video", "keyboard", "back");
		ds_list_add(selecttype, Select.goto, Select.goto, Select.goto, Select.goto);
		ds_list_add(selectadd, Title.option_audio, Title.option_video, Title.option_key, Title.main);

		select_x = room_width div 2;
		select_y = room_height div 3;

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
	var str, type, add;
	str = selectname[| i];
	type = selecttype[| i];
	add = selectadd[| i];
	
	var l = instance_create_layer(0, 0, L_SYS, obj_select);
	with(l)
	{
		self.dw_x = dw_x;
		self.dw_y = dw_y;
		self.name = str;
		self.type = type;
		
		if type == Select.goto
			goto = add;
		else if type == Select.script
			script = add;
	}
	
	dw_y += string_height(str);
}

draw_set_reset();


