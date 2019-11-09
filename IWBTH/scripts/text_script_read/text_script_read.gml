///@param str
var str, substr;
var p, p2;
str = argument[0];
//draw_text_script()
//text_script_read()
enum Script {
	text,
	key
}


text_script_clear();

var list = ds_list_create();
var state = ds_list_create();
while(string_length(str) > 0)
{
	p = string_pos("[", str);
	
	if p <= 0
	{
		ds_list_add(list, str);
		ds_list_add(state, Script.text);
		break;
	}
	
	substr = string_copy(str, 1, p-1);
	str = string_delete(str, 1, p-1);
	ds_list_add(list, substr);
	ds_list_add(state, Script.text);
	
	p2 = string_pos("]", str);
	
	if p2 < 0 //ERROR
		break; 

	substr = string_copy(str, 2, p2-2);
	str = string_delete(str, 1, p2);
	ds_list_add(list, substr);
	ds_list_add(state, Script.key);
}

var list_part = ds_list_create();
for(var i = 0; i < ds_list_size(list); i++)
{
	var str = list[| i];
	var type = state[| i];
	var val, add;
	add[0] = no;
	add[1] = no;
	add[2] = no;
	add[3] = no;
	add[4] = no;

	switch(type)
	{
		case Script.text:
			text_script_add(type, str);
		break;
		
		case Script.key:
			ds_list_clear(list_part);

			var substr, p;
			while(string_length(str) > 0)
			{
				p = string_pos(",", str);
	
				if p <= 0
				{
					ds_list_add(list_part, str);
					break;
				}
	
				substr = string_copy(str, 1, p-1);
				str = string_delete(str, 1, p);
				ds_list_add(list_part, substr);
			}

			for(var j = 0; j < ds_list_size(list_part); j++)
			{
				var field, fval;
				var str = list_part[| j];
				var p = string_pos(":", str);
				
				if 0 < p
				{
					field = string_copy(str, 1, p-1);
					fval = string_delete(str, 1, p);
				}
				else
				{
					field = "";	
					fval = str;
				}
				
				if field == "KEY"
					val = get_keyindex(fval);
				else if field == "SUB"
					add[0] = str;
			}
			
			text_script_add(type, val, add[0]);
		break;
	}
}


ds_list_destroy(list);
ds_list_destroy(list_part);

//text_script_type = ds_list_create();
//text_script_value = ds_list_create();