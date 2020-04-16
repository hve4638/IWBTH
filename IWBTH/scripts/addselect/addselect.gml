///@param name
///@param type
///@param idx
///@param add
var str, type_, add, dkey;
str = argument_count > 0 ? argument[0] : "";
type_ = argument_count > 1 ? argument[1] : Select.nothing;
dkey = argument_count > 2 ? argument[2] : TitleArray.nothing;
add = argument_count > 3 ? argument[3] : [undefined];

if !is_array(add)
	add = [add];
	
var ins = instance_create_layer(0, 0, L_SYS, obj_select);
with(ins)
{
	name = str;
	type = type_;
	check_w = string_width(str) + 24;
	check_h = string_height(str);
	datakey = dkey;

	switch(type)
	{
		case Select.toggle:
			toggle = add[0];
		break;

		case Select.goto:
			goto = add[0];
		break;

		case Select.script:
			script = add[0];
		break;

		case Select.scroll:
			percent = add[0];
		break;
			
		case Select.list:
			list = add[0];
			list_idx = add[1];
		break;
			
		case Select.game:
			save_num = add[0];
			if save_integrity(save_num)
			{
				var t = get_save_index(save_num);
				save_new = false;

				save_time = t[? "time"];
				save_death = t[? "death"];
			}
			else
				save_new = true;
		break;
	}
}

ds_list_add(select_ins, ins);

return ins;