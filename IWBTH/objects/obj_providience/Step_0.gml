var a = keyboard_check_pressed(ord("P")) - keyboard_check_pressed(ord("O"));
var t = keyboard_check_pressed(ord("I"));

if a != 0
{
	spr_idx = clamp(spr_idx + a, 0, ds_list_size(tmp));
	t = true;
}

if t
{
	sprite_index = tmp[| spr_idx];
	image_index = 0;
	image_speed = 1;
}