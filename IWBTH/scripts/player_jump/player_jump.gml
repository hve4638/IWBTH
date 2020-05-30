var e = false;

if onground || on_platform
{
    vspd = -jump;
	
	onground = false;
    sfx(snd_jump);
	
	jumpcnt = 1;
}
else if djump
{
    vspd = -jump2;
  
    djump = false;
    sfx(snd_jump2);
	
	e = true;
	jumpcnt++;
}

if e
{
	with(instance_create_layer(x, bbox_bottom, L_BELOW, obj_effect))
	{
		life_create(15);
		sprite_change(spr_effect_jump);
		imagelifematch = true;
		imageloop = false;
		linear = false;

		alpha = 0.9;
		xscale = 0.75;
		yscale = 0.75;
	}
}