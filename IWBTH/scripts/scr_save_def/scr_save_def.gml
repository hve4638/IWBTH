///@param num*
var num, sv;
num = argument_count > 0 ? argument[0] : save_idx;

sv = get_save_index(num);

sv[? "auto"] = true;
sv[? "room"] = room_get_name(rm_tutorial); //rm_template;
sv[? "x"] = 0;
sv[? "y"] = 0;
sv[? "look"] = 0;
sv[? "time"] = 0;
sv[? "death"] = 0;
sv[? "hubx"] = 0;
sv[? "huby"] = 0;
sv[? "stagetime"] = array_create(10, 0);
sv[? "stagedeath"] = array_create(10, 0);