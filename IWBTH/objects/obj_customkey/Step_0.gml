if !enable
	exit;

var w, h;
w = check_w div 2;
h = check_h div 2;

onmouse = point_in_rectangle(mouse_x, mouse_y, x - w, y - h, x + w, y + h);

if onmouse && mouse_check_button_pressed(mb_left)
{
	with(obj_customkey)
		enable = false;
	enable = true;
	
	onact = true;
}

if onact
{
	if keyboard_check_pressed(vk_anykey)
	{
		var ch = keyboard_lastkey;
		key[key_index] = ch;
		currentkey = key_get_name(key[key_index]);
		
		onact = false;
		with(obj_customkey)
			enable = true;
	}
}
