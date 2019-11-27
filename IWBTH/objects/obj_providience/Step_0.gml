var a = keyboard_check_pressed(ord("P")) - keyboard_check_pressed(ord("O"));
var t = keyboard_check_pressed(ord("I"));

if keyboard_check(vk_space)
	cout(rand_next());

for(var i = 0; i < max(ds_list_size(tmp), 9); i++)
	if keyboard_check_pressed(ord(string(i+1)))
	{
		spr_idx = i;
		t = true;
	}

if a != 0
{
	spr_idx += a;
	spr_idx = clamp(spr_idx, 0, ds_list_size(tmp) - 1);
	t = true;
}

if t
{
	sprite_index = tmp[| spr_idx];
	image_index = 0;
	image_speed = 1;
}

