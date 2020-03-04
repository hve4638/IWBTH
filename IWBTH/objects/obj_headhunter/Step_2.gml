if onhealth
{
	drawhp += (hp - drawhp) / 10;
	
	bossbar(drawhp/maxhp);
}

if onlook
{
	image_xscale = x < Player.x ? 2 : -2;
}