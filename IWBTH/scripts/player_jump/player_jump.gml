var e = false;

if onground || on_platform
{
    vspd = -jump;
	
	onground = false;
    sfx(snd_jump);
}
else if djump
{
    vspd = -jump2;
  
    djump = false;
    sfx(snd_jump2);
	
	e = true;
}

if e
{
	with(instance_create_layer(x, bbox_bottom, L_BELOW, obj_effect))
	{
		life_create(15);
		imagelifematch = true;
		onlinear = false;
		sprite_change(spr_effect_jump);
		
		image_alpha = 0.9;
		image_xscale = 0.75;
		image_yscale = 0.75;
	}
}