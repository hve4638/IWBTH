num += keyboard_check_pressed(190) - keyboard_check_pressed(188);

if keyboard_check_pressed(ord("G"))
	gridint = get_integer("input gridint", "");

if keyboard_check_pressed(ord("C"))
{
	oncancel = !oncancel;
	if oncancel	
	{
		num_p = num;
		num = -1;
	}
	else
		num = num_p;
}

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
		ins.setx += mouse_x - mx;
		ins.sety += mouse_y - my;

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
	if !keyboard_check(vk_alt)
	{
		sw *= gridint;
		sh *= gridint;
	}

	ins.setx += sw;
	ins.sety += sh;
	ins.x = round(ins.setx) div gridint * gridint;
	ins.y = round(ins.sety) div gridint * gridint;
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
			m[? "x"] = floor(ins.x);
			m[? "y"] = floor(ins.y);
			m[? "img"] = floor(ins.sprite_index);
			m[? "subimg"] = floor(ins.image_index);
			m[? "depth"] = floor(ins.depth);
			
			ds_map_add_map(map, i, m);
		}
		
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
			ins.x = m[? "x"];
			ins.y = m[? "y"];
			ins.setx = ins.x;
			ins.sety = ins.y;
			ins.sprite_index = m[? "img"];
			ins.image_index = m[? "subimg"];
		}
		ds_map_destroy(map);
		
		event_user(0);
	break;
	
	case 4:
		var idx = asset_get_index(get_string("input sprite name", ""));
		if idx < 0
			break;
		ins.sprite_index = idx;
		event_user(0);
	break;
}

if mouse_check_button(mb_right)
{
	event_user(0);
}