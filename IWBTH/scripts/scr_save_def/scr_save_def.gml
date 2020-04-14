/*///@param num*
var num, sv;
num = argument_count > 0 ? argument[0] : save_idx;

sv = get_save_index(num);

for(var i = 0; i < Save.End; i++)
{
	var ind  = global.savedata_key[i];

	sv[? ind] = global.savedata_default[i];
}
/*sv[? "version"] = VERSION;
sv[? "auto"] = true;
sv[? "room"] = room_get_name(rm_tutorial); //rm_template;
sv[? "x"] = 0;
sv[? "y"] = 0;
sv[? "look"] = 0;
sv[? "time"] = 0;
sv[? "death"] = 0;
sv[? "hubx"] = no;
sv[? "huby"] = no;
sv[? "stagetime"] = array_create(10, 0);
sv[? "stagedeath"] = array_create(10, 0);
sv[? "stageclear"] = array_create(10, 0);*/