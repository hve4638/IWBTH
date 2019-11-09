///@param string
var str = string_upper(argument[0]);

switch(str)
{
	case "UP":
		return Input.up;
	case "DOWN":
		return Input.down;
	case "LEFT":
		return Input.left;
	case "RIGHT":
		return Input.right;
	case "JUMP":
		return Input.jump;
	case "ATTACK":
		return Input.attack;
	case "DASH":
		return Input.dash;
	case "SWAP":
		return Input.swap;
	case "RESTART":
		return Input.restart;
	case "ESCAPE":
		return Input.escape;
}

return no;