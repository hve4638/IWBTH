if num < 0
	exit;

num = clamp(num, 0, array_length_1d(arr) - 1);
var ins = arr[num];


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
			//cout_show(get_map_keylist(map[? string(i)]));
			var ins = arr[i];
			var m = map[? string(i)];
			ins.setx = m[? "x"];
			ins.sety = m[? "y"];
			//ins.sprite_index = m[? "img"];
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
}

if keyboard_check_pressed(ord("B"))
{
		var str = clipboard_get_text();
		var map = json_decode(str);
		//var map = map1[? "default"];

		for(var i = 0; i < DragunParts.last; i++)
		{
			//cout_show(get_map_keylist(map[? string(i)]));
			var ins = arr[i];
			var m = map[? string(i)];
			ins.x = m[? "x"];
			ins.y = m[? "y"];
			ins.setx = ins.x - mainx;
			ins.sety = ins.y - mainy;
			ins.sprite_index = m[? "img"];
			ins.image_index = m[? "subimg"];
		}
		ds_map_destroy(map);
}

if mouse_check_button(mb_right)
{
	event_user(0);
}