///@desc New Event
if keyboard_check_pressed(vk_enter)
{
	sprite_change(sprite_index + 1);
	
	if endd < sprite_index
		sprite_change(start);
}


if keyboard_check_pressed(vk_alt)
{
	sprite_change(sprite_index - 1);
	
	if start > sprite_index
		sprite_change(endd);
}