if collision_point(x,y,obj_killer,1,0)
	scp_kill();

shootdelay--;

if dashtime <= 0
{
	if !candash
		candash = onground;

	dashdelay--;
}