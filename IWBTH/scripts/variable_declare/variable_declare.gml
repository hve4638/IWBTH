time = 0;
death = 0;
save_idx = 0;
difficulty = Difficulty.normal;
volum_sound = 1.0;
volum_music = 1.0;

global.datainput = global_map_create()

savedata = array_create(4, no);

stage_time = array_create(10, 0);
stage_death = array_create(10, 0);
stage_clear = array_create(10, false);
result_time = 0;
result_death = 0;

current_stage = 0;
view_ratio = 1.0;

enablekeyinput = true;

ongod = false;

bgm_p = noone;
bgm_ind = no;
bgm_faded = no;

boss_firstmeet = array_create(10, 0);

global.debuglevel = 1;
global.mute = false;

global.todolist = global_map_create();
global.todoedit = no;
global.edgeblur_surf = no;

global.strpreview_cnt = 15;
global.debuglevel = 0;

#region csv
	global.roomsound = load_csv(SOUND_DIRECTORY);
	global.csv_room = load_csv(ROOMDATA_DIRECTORY);
	global.textscript = load_csv(SCRIPT_DIRECTORY);
	global.record = load_json(RECORD_DIRECTORY);
	global.csv_dragun = load_csv(DRAGUNCSV_DIRECTORY);
	global.csv_dragunattack = load_csv(DRAGUNATTACKCSV_DIRECTORY);

	global.previous_sprite = global_map_create();
	ds_map_read(global.previous_sprite, "92010000FD00000000000000000000000020614001000000120000007370725F64726167756E5F67756E5F6F7574000000000000000000804240010000000D0000007370725F687562636F6C756D6E000000000000000000E06040010000001B0000007370725F64726167756E5F67756E5F66726F6E745F61747461636B000000000000000000A06340010000000C0000007370725F6B6E696665677579000000000000000000004040010000000600000074696C65303600000000000000000060624001000000150000007370725F64726167756E5F7270675F696E74726F3400000000000000000020654001000000170000007370725F70726F76696469656E63655F61747461636B41000000000000000000804640010000000F0000007370725F7370696B654D5F6C656674000000000000000000E0644001000000180000007370725F70726F76696469656E63655F61747461636B3230000000000000000000000040010000000C0000007370725F637572736572756E000000000000000000A06740010000000D0000007370725F6A656C6C7966697368000000000000000000004440010000000E0000007370725F7370696B655F646F776E00000000000000000060664001000000150000007370725F70726F76696469656E63655F7365617431000000000000000000206940010000001C0000007370725F6D61736B5F70726F76696469656E63655F61747461636B33000000000000000000804A40010000000F000000737072506C617965724B696C6C6572000000000000000000E0684001000000090000007370725F706978656C000000000000000000A06B40010000000A0000007370725F6865616C7468000000000000000000004840010000000A0000007370725F7370696B6533000000000000000000606A4001000000090000007370725F746F726368000000000000000000206D4001000000090000007370725F73776F7264000000000000000000804E40010000000D0000007370725F64616E6D616B755F33000000000000000000E06C40010000000D0000007370725F776869746562616C6C000000000000000000000840010000000D0000007370725F637572736566616C6C000000000000000000004C4001000000080000007370725F74657874000000000000000000606E4001000000080000007370725F7A65616C000000000000000000405240010000000C0000007370725F6461726B7761726D000000000000000000805340010000000E0000007370725F7363797468655F726564000000000000000000C05040010000000D0000007370725F706C6174666F726D32000000000000000000005140010000000C00000073707257616C6C6A756D704C000000000000000000405640010000000C0000007370725F7275696E6265616D000000000000000000805740010000000E0000007370725F707762616C6C5F72656400000000000000000000F03F010000000F0000007370725F6375727365706C61796572000000000000000000C05440010000000A0000007370725F637269636C65000000000000000000005540010000000B0000007370725F636972636C6532000000000000000000405A40010000000A0000007370725F62616E6A616B000000000000000000805B4001000000080000007370725F61717561000000000000000000C0584001000000090000007370725F636861696E000000000000000000005940010000000E0000007370725F637572736573686F6F74000000000000000000405E4001000000140000007370725F64726167756E5F636C61775F7765616B000000000000000000805F4001000000130000007370725F64726167756E5F6E65636B5F746F70000000000000000000C05C40010000000B0000007370725F76616D70697265000000000000000000005D40010000000B0000007370725F74686574696D6500000000000000000040614001000000180000007370725F64726167756E5F67756E5F736964655F69646C6500000000000000000080604001000000130000007370725F64726167756E5F6D61635F69646C65000000000000000000002640010000000F0000007370725F706C617965725F64617368000000000000000000C0634001000000170000007370725F70726F76696469656E63655F7265616479303000000000000000000000624001000000150000007370725F64726167756E5F7270675F696E74726F3100000000000000000040654001000000170000007370725F70726F76696469656E63655F61747461636B4200000000000000000080644001000000180000007370725F70726F76696469656E63655F61747461636B3030000000000000000000002240010000000E0000007370725F706C617965725F72756E000000000000000000C0674001000000140000007370725F6A656C6C79666973685F61747461636B00000000000000000000664001000000140000007370725F70726F76696469656E63655F77616C6B000000000000000000406940010000001C0000007370725F6D61736B5F70726F76696469656E63655F61747461636B3400000000000000000080684001000000090000007370725F6D61736B34000000000000000000002E40010000000A0000007370725F726962626F6E000000000000000000C06B40010000000D0000007370725F6865616C7468626172000000000000000000006A4001000000070000007370725F626172000000000000000000406D40010000000A0000007370725F627562626C65000000000000000000806C40010000000B0000007370725F746D70626F7373000000000000000000002A4001000000120000007370725F706C617965725F736C6964696E67000000000000000000006E4001000000090000007370725F74656D7032000000000000000000003740010000000C0000006261636B67726F756E643133000000000000000000003340010000000B0000006261636B67726F756E6431000000000000000000003F40010000000600000074696C653034000000000000000000003B40010000000600000074696C65303100000000000000000080434001000000090000007370725F7370696B65000000000000000000E0614001000000120000007370725F64726167756E5F7270675F6F757400000000000000000020604001000000150000007370725F64726167756E5F77696E67735F666C6170000000000000000000004140010000000600000074696C65303900000000000000000060634001000000140000007370725F64726167756E5F6B6E6966655F6F7574000000000000000000A0624001000000140000007370725F64726167756E5F7270675F6F7574726F000000000000000000804740010000000A0000007370725F7370696B6532000000000000000000E0654001000000150000007370725F70726F76696469656E63655F69646C653200000000000000000020644001000000170000007370725F70726F76696469656E63655F72656164793230000000000000000000004540010000000E0000007370725F7370696A655F6C656674000000000000000000606740010000000B0000007370725F70686173696E67000000000000000000A0664001000000140000007370725F70726F76696469656E63655F646F776E000000000000000000804B40010000000E0000007370725F74657874736372697074000000000000000000E0694001000000080000007370725F7361766500000000000000000020684001000000090000007370725F6D61736B31000000000000000000004940010000000A0000007370725F7370696B6541000000000000000000606B40010000000D0000007370725F656E74657274657874000000000000000000A06A40010000000A0000007370725F73656C656374000000000000000000804F40010000000D0000007370725F64616E6D616B753634000000000000000000E06D40010000000B000000737072506C6174666F726D000000000000000000206C40010000000C0000007370725F67616D656F766572000000000000000000004D4001000000090000007370725F766D6F7265000000000000000000606F4001000000140000007370725F64726167756E5F686561645F7765616B000000000000000000A06E40010000001000000064726167756E5F696E74726F5F30333000000000000000000080524001000000110000007370725F64696D656E73696F6E7761726D000000000000000000405340010000000A0000007370725F736379746865000000000000000000005040010000000C0000007370725F62616E626C6F636B00000000000000000000144001000000180000007370725F706C617965725F6372656174655F6F726967696E000000000000000000C05140010000000A0000007370725F776172696E67000000000000000000805640010000000A0000007370725F657370696B65000000000000000000405740010000000A0000007370725F707762616C6C000000000000000000005440010000000C0000007370725F6275726669636F6E00000000000000000000104001000000110000007370725F706C617965725F637265617465000000000000000000C0554001000000090000007370725F6D62616C6C000000000000000000805A4001000000090000007370725F626C6F6F64000000000000000000405B40010000000A0000007370725F72656170657200000000000000000000584001000000080000007370725F74697032000000000000000000001C40010000000F0000007370725F706C617965725F69646C65000000000000000000C05940010000000D0000007370725F626C6F6F64626F6F6D000000000000000000805E4001000000140000007370725F64726167756E5F686561645F69646C65000000000000000000405F4001000000160000007370725F64726167756E5F6E65636B5F626F74746F6D000000000000000000005C40010000000900000073707269746531383100000000000000000000184001000000120000007370725F506C617965726469656465627567000000000000000000C05D4001000000160000007370725F64726167756E5F636C61775F67756E67657400000000000000000080614001000000190000007370725F64726167756E5F67756E5F736964655F747769726C00000000000000000040604001000000150000007370725F64726167756E5F77696E67735F69646C65000000000000000000006340010000001F0000007370725F64726167756E5F7270675F6D757A7A6C65666C6173685F6261636B000000000000000000C0624001000000190000007370725F64726167756E5F7270675F70726F6A656374696C6500000000000000000080654001000000160000007370725F70726F76696469656E63655F70686173653200000000000000000040644001000000170000007370725F70726F76696469656E63655F72656164793330000000000000000000006740010000001D0000007370725F6D61736B5F70726F76696469656E63655F61747461636B3131000000000000000000C06640010000001D0000007370725F6D61736B5F70726F76696469656E63655F61747461636B3030000000000000000000806940010000000E0000007370725F6D61736B5F73686F636B00000000000000000040684001000000090000007370725F6D61736B32000000000000000000006B40010000000B0000007370725F73617665747874000000000000000000C06A40010000000D0000007370725F637573746F6D6B6579000000000000000000806D40010000000E0000007370725F706F727463756C6C6973000000000000000000406C4001000000150000007370725F696E74726F5F70726F76696469656E6365000000000000000000006F4001000000100000007370725F64726167756E62756C6C6574000000000000000000C06E40010000000E0000007370725F746D70627574746F6E32000000000000000000003640010000000B0000006261636B67726F756E6437000000000000000000003240010000000A0000007370725F736C61736831000000000000000000003E40010000000600000074696C653033000000000000000000003A40010000000C0000007370725F74696C655F687562000000000000000000A06140010000001B0000007370725F64726167756E5F67756E5F66726F6E745F65666665637400000000000000000000424001000000190000007370725F6261636B67726F756E645F74656D706F726172793100000000000000000060604001000000120000007370725F64726167756E5F6D61635F6F757400000000000000000020634001000000170000007370725F64726167756E5F6B6E6966655F696D70616374000000000000000000804040010000000600000074696C653037000000000000000000E06240010000001A0000007370725F64726167756E5F7270675F6D757A7A6C65666C617368000000000000000000A0654001000000160000007370725F70726F76696469656E63655F70686173653300000000000000000000464001000000100000007370725F7370696B654D5F726967687400000000000000000060644001000000170000007370725F70726F76696469656E63655F72656164793331000000000000000000206740010000001D0000007370725F6D61736B5F70726F76696469656E63655F61747461636B3230000000000000000000804440010000000F0000007370725F7370696B655F7269676874000000000000000000E06640010000001D0000007370725F6D61736B5F70726F76696469656E63655F61747461636B3130000000000000000000A06940010000000D0000007370725F736176655F77757373000000000000000000004A40010000000A0000007370725F63616D65726100000000000000000060684001000000090000007370725F6D61736B33000000000000000000206B4001000000070000007370725F73756200000000000000000080484001000000080000007370726974653733000000000000000000E06A40010000000F0000007370725F6573636170656761756765000000000000000000A06D40010000000F0000007370725F626C6F636B5F746F776572000000000000000000004E40010000000B0000007370725F64616E6D616B75000000000000000000606C4001000000100000007370725F696E74726F5F64726167756E000000000000000000206F4001000000150000007370725F64726167756E5F686561645F6465617468000000000000000000804C4001000000080000007370725F6D6F7265000000000000000000E06E4001000000090000007370725F656D707479000000000000000000C0524001000000090000007370725F6C61736572000000000000000000005340010000000A0000007370725F63686172676500000000000000000040504001000000090000007370725F626C6F636B000000000000000000805140010000000D0000007370725F77617465725F687562000000000000000000C0564001000000090000007370725F626C61646500000000000000000000574001000000090000007370725F6368756E6B000000000000000000000000010000000D0000007370725F63757273656A756D70000000000000000000405440010000000E0000007370725F6C6967687473776F7264000000000000000000805540010000000D0000007370725F776174657262616C6C000000000000000000C05A4001000000090000007370725F69676E6973000000000000000000005B40010000000F0000007370725F69676E69735F6576656E7400000000000000000040584001000000070000007370725F6B6579000000000000000000805940010000000C0000007370725F6461726B64757374000000000000000000C05E4001000000150000007370725F64726167756E5F686561645F73686F6F74000000000000000000005F4001000000150000007370725F64726167756E5F686561645F7377696E67000000000000000000405C40010000000C0000007370725F736F726365726572000000000000000000805D40010000000F0000007370725F64726167756E5F626F6479000000000000000000002440010000000F0000007370725F706C617965725F66616C6C000000000000000000C06140010000001A0000007370725F64726167756E5F67756E5F736964655F656666656374000000000000000000006040010000000E0000007370725F64726167756E5F61726D00000000000000000040634001000000100000007370725F64726167756E5F6B6E69666500000000000000000080624001000000130000007370725F64726167756E5F7270675F66697265000000000000000000002040010000000F0000007370725F706C617965725F6A756D70000000000000000000C0654001000000140000007370725F70726F76696469656E63655F69646C6500000000000000000000644001000000170000007370725F70726F76696469656E63655F72656164793131000000000000000000406740010000001D0000007370725F6D61736B5F70726F76696469656E63655F61747461636B333000000000000000000080664001000000120000007370725F70726F76696469656E63655F7570000000000000000000002C40010000000E0000007370725F706C617965726D61736B000000000000000000C06940010000000A0000007370725F627574746F6E00000000000000000000684001000000090000007370725F64756D6D79000000000000000000406B40010000000D0000007370725F7363726970746B6579000000000000000000806A40010000000C0000007370725F72657365746F7262000000000000000000002840010000000A0000007370725F42756C6C6574000000000000000000C06D4001000000080000007370725F646F6F72000000000000000000006C40010000000E0000007370725F7374616765636C656172000000000000000000406F4001000000120000007370725F64726167756E5F72616765657965000000000000000000806E40010000000E0000007370725F74656D70627574746F6E000000000000000000003540010000000B0000006261636B67726F756E643400000000000000000000314001000000090000007370725F736C617368000000000000000000003D40010000000600000074696C653032000000000000000000003940010000000E0000007370725F74696C655F626C6F636B00000000000000000000434001000000090000007370725F6C69676874000000000000000000606140010000001A0000007370725F64726167756E5F67756E5F736964655F61747461636B000000000000000000A0604001000000150000007370725F64726167756E5F6D61635F61747461636B000000000000000000804140010000000600000074696C653132000000000000000000E0634001000000170000007370725F70726F76696469656E63655F7265616479313000000000000000000020624001000000150000007370725F64726167756E5F7270675F696E74726F32000000000000000000004740010000000F0000007370725F7370696B654D5F646F776E00000000000000000060654001000000160000007370725F70726F76696469656E63655F706861736531000000000000000000A0644001000000180000007370725F70726F76696469656E63655F61747461636B3130000000000000000000804540010000000A0000007370725F7370696B654D000000000000000000E06740010000000D0000007370725F6175746F676F6C656D00000000000000000020664001000000140000007370725F70726F76696469656E63655F64617368000000000000000000004B40010000000400000074656D7000000000000000000060694001000000120000007370725F6D61736B5F73776F726477617665000000000000000000A06840010000000C0000007370725F6D61736B5F74697000000000000000000080494001000000080000007370725F696E6974000000000000000000E06B40010000000E0000007370725F6865616C746862617231000000000000000000206A4001000000080000007370725F62617231000000000000000000004F40010000000D0000007370725F64616E6D616B755F32000000000000000000606D40010000000C0000007370725F7761726E696E6733000000000000000000A06C40010000000E0000007370725F76616D70697265313131000000000000000000804D4001000000090000007370725F686D6F7265000000000000000000206E40010000000D0000007370725F73776F726477617665000000000000000000005240010000000A0000007370725F746172676574000000000000000000C05340010000000C0000007370725F6669726562616C6C000000000000000000805040010000000C0000007370725F506C6174666F726D000000000000000000405140010000000C00000073707257616C6C6A756D7052000000000000000000005640010000000D0000007370725F7275696E6265616D32000000000000000000C0574001000000070000007370725F74697000000000000000000080544001000000080000007370725F6265616D000000000000000000405540010000000D0000007370725F6C61736572626C7565000000000000000000005A40010000000A0000007370725F636972636C65000000000000000000C05B4001000000090000007370725F7269627261000000000000000000805840010000000C0000007370725F6B6579696E707574000000000000000000405940010000000D0000007370725F626C6F6F6464757374000000000000000000005E4001000000140000007370725F64726167756E5F636C61775F69646C65000000000000000000C05F4001000000130000007370725F64726167756E5F73686F756C646572000000000000000000805C4001000000110000007370725F736F7263657265725F6563686F000000000000000000405D400100000009000000737072697465313830000000000000000000006140010000001A0000007370725F64726167756E5F67756E5F66726F6E745F747769726C000000000000000000C0604001000000190000007370725F64726167756E5F67756E5F66726F6E745F69646C6500000000000000000080634001000000160000007370725F64726167756E5F6B6E6966655F7468726F7700000000000000000040624001000000150000007370725F64726167756E5F7270675F696E74726F3300000000000000000000654001000000180000007370725F70726F76696469656E63655F61747461636B3330000000000000000000C0644001000000180000007370725F70726F76696469656E63655F61747461636B313100000000000000000080674001000000080000007370725F6D61676500000000000000000040664001000000150000007370725F70726F76696469656E63655F7365617430000000000000000000006940010000001C0000007370725F6D61736B5F70726F76696469656E63655F61747461636B31000000000000000000C06840010000000E0000007370725F7363797468656D61736B000000000000000000806B40010000000B0000007370725F6B657969636F6E000000000000000000406A4001000000080000007370725F62617232000000000000000000006D4001000000090000007370725F7370656172000000000000000000C06C4001000000100000007370725F6566666563745F6375727365000000000000000000806F4001000000150000007370725F64726167756E62756C6C65745F726F6C6C000000000000000000406E4001000000080000007370725F64757374000000000000000000003440010000000C0000006261636B67726F756E643362000000000000000000003040010000000F0000007370725F706C617965725F6D61736B000000000000000000003C40010000000600000074696C653030000000000000000000003840010000000A0000007370725F74696C653031");
#endregion

#region room data
	var w, h;
	var snd, rm, sndloop, stage, timer,
	w = ds_grid_width(global.csv_room);
	h = ds_grid_height(global.csv_room);
	rm = ds_grid_value_x(global.csv_room, 0, 0, w - 1, 0, "#ROOM");
	snd = ds_grid_value_x(global.csv_room, 0, 0, w - 1, 0, "#SOUND");
	sndloop = ds_grid_value_x(global.csv_room, 0, 0, w - 1, 0, "#SOUNDLOOP");
	stage = ds_grid_value_x(global.csv_room, 0, 0, w - 1, 0, "#STAGE");
	timer = ds_grid_value_x(global.csv_room, 0, 0, w - 1, 0, "#INGAME");

	roomdata = ds_grid_create(RMDATA_WIDTH, room_count);
	for(var i = 0; i < room_count; i++)
	{
		roomdata[# RMDATA_SOUND, i] = no;
		roomdata[# RMDATA_SOUNDLOOP, i] = false;
		roomdata[# RMDATA_STAGE, i] = 0;
		roomdata[# RMDATA_INGAME, i] = 0;
	}

	for(var i = 0; i < h; i++)
	{
		var idx = asset_get_index(global.csv_room[# rm, i]);
		if idx == -1
			continue;

		roomdata[# RMDATA_SOUND, idx] = asset_get_index(global.csv_room[# snd, i]);
		roomdata[# RMDATA_SOUNDLOOP, idx] = global.csv_room[# sndloop, i];
		roomdata[# RMDATA_STAGE, idx] = global.csv_room[# stage, i];
		roomdata[# RMDATA_INGAME, idx] = global.csv_room[# timer, i];
	}
#endregion

#region resolution
	global.resolution_name = global_list_create();
	global.resolution_w = global_list_create();
	global.resolution_h = global_list_create();
	ds_list_add(global.resolution_name, "1024x576", "1088x608", "1280x720", "1366x768", "1600x900", "1920x1080", "2560x1440");
	ds_list_add(global.resolution_w, 1024, 1088, 1270, 1366, 1600, 1920, 2560);
	ds_list_add(global.resolution_h, 576, 608, 720, 768, 900, 1080, 1440);
#endregion

#region each_volum
	each_volum = global_map_create();
	var index = 0;
	for(var i = 0; i < sound_count; i++)
		each_volum[? index++] = 1.0;

	each_volum[? snd_shoot] = 0.3;
	each_volum[? snd_dash] = 0.75;
	each_volum[? snd_jump] = 0.75;
	each_volum[? snd_jump2] = 0.75;
	each_volum[? snd_magic_blast2] = 0.75;
	each_volum[? snd_dragungunshoot] = 0.8;
	each_volum[? snd_slash] = 0.75;
	each_volum[? snd_slash2] = 0.75;
	each_volum[? snd_effect3] = 0.75;
	each_volum[? snd_shoot2] = 0.4;
	each_volum[? snd_explode3] = 0.7;
	each_volum[? snd_magic_blast2_small] = 0.75;
#endregion

#region save integrity
var arr = array_create(10, 0);
	arr[Save.Version] = VERSION;
	arr[Save.X] = 0;
	arr[Save.Y] = 0;
	arr[Save.Room] = room_get_name(rm_hub);
	arr[Save.Auto] = true;
	arr[Save.Look] = 1;
	arr[Save.Time] = 0;
	arr[Save.Death] = 0;
	arr[Save.Stagetime] = array_create(10, 0);
	arr[Save.Stagedeath] = array_create(10, 0);
	arr[Save.Hubx] = -1;
	arr[Save.Huby] = -1;
	arr[Save.Stageclear] = array_create(10, 0);
	arr[Save.Bossmeet] = array_create(10, 0);
global.savedata_default = arr;

var arr = array_create(10, 0);
	arr[Save.Version] = "version";
	arr[Save.X] = "x";
	arr[Save.Y] = "y";
	arr[Save.Room] = "room";
	arr[Save.Auto] = "auto";
	arr[Save.Look] = "look";
	arr[Save.Time] = "time";
	arr[Save.Death] = "death";
	arr[Save.Stagetime] = "stagetime";
	arr[Save.Stagedeath] = "stagedeath";
	arr[Save.Hubx] = "hubx";
	arr[Save.Huby] = "huby";
	arr[Save.Stageclear] = "stageclear";
	arr[Save.Bossmeet] = "bossmeet";
global.savedata_key = arr;

var csv_savemeta = load_csv(SAVEMETA_DIRECTORY);
var meta, meta_n, meta_d;
w = ds_grid_width(csv_savemeta);
h = ds_grid_height(csv_savemeta);
meta = ds_grid_value_x(csv_savemeta, 0, 0, w - 1, 0, "#metadata");
meta_n = ds_grid_value_x(csv_savemeta, 0, 0, w - 1, 0, "#necessary");
meta_d = ds_grid_value_x(csv_savemeta, 0, 0, w - 1, 0, "#default_index");

global.savemeta = array_create(h - 1);
global.savemeta_necessary = array_create(h - 1);
global.savemeta_default = array_create(h - 1, -4);

for(var i = 1; i < h; i++)
{
	global.savemeta[i - 1] = csv_savemeta[# meta, i];
	global.savemeta_necessary[i - 1] = csv_savemeta[# meta_n, i];
	global.savemeta_default[i - 1] = csv_savemeta[# meta_d, i];
}
#endregion

#region sv_*
	sv_version = undefined;
	sv_auto = undefined;
	sv_x = undefined;
	sv_y = undefined;
	sv_room = undefined;
	sv_look = undefined;
	sv_time = undefined;
	sv_death = undefined;
	sv_stagetime = undefined;
	sv_stagedeath = undefined;
	sv_hubx = undefined;
	sv_huby = undefined;
	sv_stageclear = undefined;
	sv_bossmeet = undefined;
#endregion