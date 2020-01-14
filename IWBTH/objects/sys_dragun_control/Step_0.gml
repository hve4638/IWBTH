if num < 0
	exit;

num = clamp(num, 0, array_length_1d(arr) - 1);
var ins = arr[num];

if keyboard_check_pressed(ord("X"))
{
	ins.lock = !ins.lock;	
}


var k = - keyboard_check_pressed(ord("O")) + keyboard_check_pressed(ord("P"));
if k != 0
{
	current_num += k;
	current_num = clamp(current_num, 0, arr_size(map_arr) - 1);
	scr_dctrl_mload(current_num);
}


switch(receiveidx)
{
	case 0:

#region

	if mouse_check_button_pressed(mb_left)
	{
		ondrag = true;
		mx = mouse_x;
		my = mouse_y;
	}
	else if !mouse_check_button(mb_left)
		ondrag = false;
				
	if ondrag
	{
		if num == DragunParts.body
		{
			mainx += mouse_x - mx;
			mainy += mouse_y - my;
		}
		else
		{
			ins.setx += mouse_x - mx;
			ins.sety += mouse_y - my;
		}
		
		mx = mouse_x;
		my = mouse_y;
	}

	var sw = 0, sh = 0;
	if !keyboard_check(vk_shift)
	{
		sw = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);
		sh = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	}
	else
	{
		sw = - keyboard_check(vk_left) + keyboard_check(vk_right);
		sh = keyboard_check(vk_down) - keyboard_check(vk_up);
	}

	if num == DragunParts.body
	{
		mainx += sw;
		mainy += sh;
	}
	else
	{
		ins.setx += sw;
		ins.sety += sh;
	}
#endregion

	break;
	
	case 1:
		var t = mouse_wheel_up() - mouse_wheel_down();
		ins.image_index = modulo(ins.image_index + t, ins.image_number);
		receiveby.lore2 = "image index: " + string(ins.image_index);
	break;

	case 2:
		var map = ds_map_create();
		for(var i = 0; i < DragunParts.last; i++)
		{
			var ins = arr[i];
			if ins.lock
				continue;
			var m = ds_map_create();
			m[? "x"] = ins.setx;
			m[? "y"] = ins.sety;
			m[? "img"] = floor(ins.sprite_index);
			m[? "subimg"] = floor(ins.image_index);
			m[? "depth"] = floor(ins.depth);
			m[? "xscale"] = ins.image_xscale;
			m[? "yscale"] = ins.image_yscale;
			
			ds_map_add_map(map, i, m);
		}
		map[? "mainx"] = mainx;
		map[? "mainy"] = mainy;

		clipboard_set_text(json_encode(map));
		cout_show("success copy to clipboard.");
		ds_map_destroy(map);
		
		event_user(0);
	break;
	
	case 3:
		var str = clipboard_get_text();
		var map = json_decode(str);
		//var map = map1[? "default"];

		for(var i = 0; i < DragunParts.last; i++)
		{
			if !ds_map_exists(map, string(i))
				continue;

			//cout_show(get_map_keylist(map[? string(i)]));
			var ins = arr[i];
			var m = map[? string(i)];
			ins.setx = m[? "x"];
			ins.sety = m[? "y"];
			ins.sprite_index = m[? "img"];
			ins.image_index = m[? "subimg"];
			ins.image_xscale = m[? "xscale"];
			ins.image_yscale = m[? "yscale"];
		}
		mainx = map[? "mainx"];
		mainy = map[? "mainy"];
		
		ds_map_destroy(map);

		var ins = arr[DragunParts.body];
		ins.setx = 0;
		ins.sety = 0;
		
		event_user(0);
	break;
	
	case 4:
		var idx = asset_get_index(get_string("input sprite name", ""));
		if idx < 0
			break;
		ins.sprite_index = idx;
		event_user(0);
	break;
	
	case 5:
		num = receiveby.num;
		event_user(0);
	break;
	
	case 6:
		ins.image_xscale = -ins.image_xscale;
		event_user(0);
	break;
	
	case 7:
		ins.lock = !ins.lock;
		event_user(0);
	break;
	
	case 11:
		scr_dctrl_madd();
		event_user(0);
	break;

	case 12:
		scr_dctrl_msave(current_num);
		event_user(0);
	break;
	
	case 13:
		arr[DragunParts.hand_l].setx = -arr[DragunParts.hand_r].setx;
		arr[DragunParts.hand_l].sety = arr[DragunParts.hand_r].sety;
		arr[DragunParts.hand_l].sprite_index = arr[DragunParts.hand_r].sprite_index;
		arr[DragunParts.hand_l].image_index = arr[DragunParts.hand_r].image_index;
		arr[DragunParts.arm_l1].setx = -arr[DragunParts.arm_r1].setx;
		arr[DragunParts.arm_l2].setx = -arr[DragunParts.arm_r2].setx;
		arr[DragunParts.arm_l3].setx = -arr[DragunParts.arm_r3].setx;
		arr[DragunParts.arm_l4].setx = -arr[DragunParts.arm_r4].setx;
		arr[DragunParts.arm_l5].setx = -arr[DragunParts.arm_r5].setx;
		arr[DragunParts.arm_l1].sety = arr[DragunParts.arm_r1].sety;
		arr[DragunParts.arm_l2].sety = arr[DragunParts.arm_r2].sety;
		arr[DragunParts.arm_l3].sety = arr[DragunParts.arm_r3].sety;
		arr[DragunParts.arm_l4].sety = arr[DragunParts.arm_r4].sety;
		arr[DragunParts.arm_l5].sety = arr[DragunParts.arm_r5].sety;
		event_user(0);
	break;
	
	case 14:
		if show_question("Are you sure?")
		{
			var tmp = map_arr;
			var ind = 0;
			tmp[0] = tmp[0];
			ds_map_destroy(map_arr[current_num]);
			map_arr = 0;
	
			for(var i = 0; i < arr_size(tmp); i++)
			{
				if i == current_num
					continue;
					
				map_arr[ind++] = tmp[i];
			}
			current_num = max(0, current_num - 1);
			scr_dctrl_mload(current_num);
			scr_dctrl_mupdate();
		}
		event_user(0);
	break;

	case 10:
		var n = receivemap;
		current_num = n;
		scr_dctrl_mload(n);
		event_user(0);
	break;
	
	case 20:
		var list = ds_list_create();
		var cnt = arr_size(map_arr);
		for(var i = 0; i < cnt; i++)
		{
			ds_list_add(list, map_arr[i]);
			ds_list_mark_as_map(list, i);
			//cout_show(map_show(map_arr[i]));
		}
		var map = ds_map_create();
		ds_map_add_list(map, "default", list);
		clipboard_set_text(json_encode(map));
		
		ds_list_demark(list);
		ds_map_destroy(map);
		cout_show("copy clipboard");
		event_user(0);
	break;
	
	case 21:
		var map = json_decode(clipboard_get_text());
		if map == -1
			break;
		
		var list = map[? "default"];
		var s = arr_size(map_arr);
		for(var i = 0; i < s; i++)
			ds_map_destroy(map_arr[i]);

		for(var i = 0; i < ds_list_size(list); i++)
		{
			map_arr[i] = list[| i];
		}
		
		//map_show
		
		ds_list_demark(list);
		ds_map_destroy(map);
		cout("load complete");
		
		current_num = 0;
		scr_dctrl_mload(0);
		scr_dctrl_mupdate();
		event_user(0);
	break;
	
	case 22:
		var map = json_decode(clipboard_get_text());
		if map == -1
			break;
		
		var list = map[? "default"];
			cout_show("list:", list_show(list));

		for(var i = 0; i < ds_list_size(list); i++)
		{
			var m = list[| string(i)];
			var ar = map_show(m);
			for(var j = 0; j < arr_size(ar); j++)
			{
				var k = m[? ar[j]];
				cout_show(j, k[? "img"]);
				k[? "img"] = sprite_get_name(k[? "img"]);
			}
		}
		
		ds_map_destroy(map);
			
		cout_show("convert!");
		event_user(0);
	break;
	
	case 30:
		var map = ds_map_create();
		for(var i = 0; i < DragunParts.last; i++)
		{
			var ins = arr[i];

			map[? string(i)] = bool(ins.lock);
		}
		clipboard_set_text(json_encode(map));
		ds_map_destroy(map);
		cout_show("lockdata copy!");
		event_user(0);
	break;
	
	case 31:
		var map = json_decode(clipboard_get_text());
		for(var i = 0; i < DragunParts.last; i++)
		{
			var ins = arr[i];

			ins.lock = map[? string(i)];
		}
		ds_map_destroy(map);
		event_user(0);
}

switch(receiveidx_r)
{
	case 5:
		var n = receiveby_r.num;
		arr[n].setx = -arr[num].setx;
		arr[n].sety = arr[num].sety;
	break;
}

receiveidx_r = -1;

if mouse_check_button(mb_right)
{
	event_user(0);
}