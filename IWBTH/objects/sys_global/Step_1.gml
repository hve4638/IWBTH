if keyboard_check(vk_alt) && keyboard_check(vk_f4)
	game_end();

if button_press(Input.restart) && canrestart
	load();

if keyboard_check_pressed(vk_escape) && room == rm_title
	game_restart();