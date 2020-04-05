
enum Input {
	left,
	right,
	up,
	down,
	attack,
	jump,
	dash,
	restart,
	escape,
	swap
}

enum Inputtype {
	keyboard,
	gamepad
}

enum Camtype {
	follow_obj,
	follow_pos,
	nothing
}

enum Select {
	nothing,
	game,
	list,
	goto,
	script,
	toggle,
	scroll
}

enum Title {
	start,
	main,
	game,
	option,
	option_audio,
	option_video,
	option_key,
	nothing
}

enum TitleArray {
	nothing = 0,
	resolution,
	fullscreen,
	mastervolum,
	musicvolum,
	soundvolum,
	ui
}

enum Difficulty {
	easy = 0,
	normal = 1,
	hard = 2
}

enum Attacktype {
	gun,
	sword
}