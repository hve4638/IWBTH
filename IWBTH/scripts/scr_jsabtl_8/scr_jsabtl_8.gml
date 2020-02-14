var idx = argument[0];
var f = idx div 4;


with(obj_player)
{
	y -= f * 0.6;
	vspd *= 0.1;
}

with(obj_jsabobstacle)
{
	if onbounce
	{
		y -= f * 2;
	}
	else
	{
		y -= f;
	}
}

with(obj_danmaku)
{
	y -= f;
}
	
return 0;