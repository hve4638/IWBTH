if todo_is_playing()
{	
	scr_dragun_todo();
	
	if todo_end(todo_current())
	{
		scr_dragun_next();
	}
}

if head_follow 
{
	var ins = dragun[? DragunParts.head];
	var dis = abs(Player.x - ins.x);
	var s = sign(Player.x - ins.x);
	var i = false;

	if ((0 < s && ins.x + head_hspd < x + head_follow_range) || (0 > s && ins.x + head_hspd > x - head_follow_range)) && dis > 16
		head_hspd += s * 0.1;
	else
		i = true;
		
	
	var s = sign(head_hspd);
	var a = abs(head_hspd);
	if i
		a = a < 0.1 ? 0 : a - 0.1;
	a = a > 1 ? 1 : a;
	head_hspd = a * s;

	ins.x += head_hspd;
}

var a, b;
a = dragun[? DragunParts.head].x;
b = dragun[? DragunParts.body].x;

dragun[? DragunParts.neck1].x = value_merge(a, b, 1/9);
dragun[? DragunParts.neck2].x = value_merge(a, b, 3/9);
dragun[? DragunParts.neck3].x = value_merge(a, b, 5/9);
dragun[? DragunParts.neck4].x = value_merge(a, b, 7/9);
dragun[? DragunParts.neck5].x = value_merge(a, b, 8/9);

var px = x;
for(var i = DragunParts.neck5; i >= DragunParts.neck1; i--)
{
	var ins = dragun[? i];
	if 4 < abs(ins.x - px)
	{
		ins.image_index = 1;
		ins.image_xscale = sign(ins.x - px) * abs(ins.image_xscale);
	}
	else
	{
		ins.image_index = 0;
		ins.image_xscale = abs(ins.image_xscale);
	}
	
	px = ins.x;
}