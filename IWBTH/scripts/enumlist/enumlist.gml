enum Save
{
	Version = 0,
	X = 1,
	Y = 2,
	Room = 3,
	Auto = 4,
	Look = 5,
	Time = 6,
	Death = 7,
	Stagetime = 8,
	Stagedeath = 9,
	Hubx = 10,
	Huby = 11,
	Stageclear = 12,
	Bossmeet = 13
}

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

enum Camtype {
	follow_obj,
	follow_pos,
	nothing
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