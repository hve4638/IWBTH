///@argu index
var idx = argument[0];

switch(idx)
{
	case 0:
	cout("~~~~~~~~~~~~~");
		room_speed = 20;
		onwhiteout = true;
	break;
	
	case 30:
		room_speed = DEFAULT_FPS;
		whiteout_add = -0.03;
	break;
	
	case 85:
		onwhiteout = false;
		return no;
	break;
}


return 0;