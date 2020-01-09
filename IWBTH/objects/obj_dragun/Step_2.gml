if onhealth
{
	var add = (hp - drawhp);
	drawhp += add / 10;
	
	bossbar(drawhp/maxhp);
}