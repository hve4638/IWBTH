if head_follow
{
	var ins = dragun[? DragunParts.head];
	var dis = abs(Player.x - ins.x);
	var s = sign(Player.x - ins.x);
	var i = false;

	if ((0 < s && ins.x + head_hspd < x + head_follow_range) || (0 > s && ins.x + head_hspd > x - head_follow_range)) && dis > 16
		head_hspd += s * 0.2;
	else
		i = true;
		
	
	var s = sign(head_hspd);
	var a = abs(head_hspd);
	if i
		a = a < 0.2 ? 0 : a - 0.2;
	a = a > 2 ? 2 : a;
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
