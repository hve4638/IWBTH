var L, R, h;
var h;
L = left;
R = right;
h = 0;

if !frozen
{
    if R
        h = 1;
    else if L
        h = -1;
}

var onblockR = !onground && tile_cling(1, 0);
var onblockL = !onground && tile_cling(-1, 0);

#region movement
if h != 0
{
	if !(onblockL || onblockR)
		look = h;
	hspd = max_hspd * h;
	
    sprite_index = idxspr_run;
}
else
{
	hspd = 0;

    sprite_index = idxspr_idle;
}

if onground || on_platform
{
	djump = true;

	if !tilemap_get_at_pixel(tile_collision, bbox_left, bbox_bottom + 1) && !tilemap_get_at_pixel(tile_collision, bbox_right, bbox_bottom + 1)
	{
		if 0<jumpbuffer
			jumpbuffer--;
		else
			onground = false;
	}
	else
		jumpbuffer = 1;
}
else
{
	vspd += grav;
}

hspd += round(hspd_slide);
vspd += round(vspd_slide);

vspd = clamp(vspd, -max_vspd, max_vspd);
#endregion

if !frozen && !(0 < dashtime)
{
	if onwalljump == 0
	{
		if button_press(Input.jump)
			player_jump();

		if button_release(Input.jump)
			player_vjump();
	}

	if attackdelay <= 0
	{
		var fire = button(Input.attack) || onautofire 
		if attacktype == Attacktype.gun && fire
		{
			attackdelay = attackdelay_gun;
			scr_player_shoot();
		}
		else if attacktype == Attacktype.sword && fire
		{
			attackdelay = attackdelay_sword;
			//hspd ;
			
			scr_player_slash();
		}
	}
	
	if button_press(Input.dash) && dashdelay <= 0 && candash
	{
		dashdelay = dashdelay_max;
		
		scr_player_dash();
	}
}

if 0 < dashtime
{
	hspd = dashdir * dashlen;
	vspd = 0;
	
	dashtime--;
	
	sprite_index = idxspr_dash;
}

if !on_platform
{
    if vspd < -0.05
		sprite_index = idxspr_jump;
    else if vspd > 0.05
		sprite_index = idxspr_fall;
}
else
{
    if !place_meeting(x, y + 1, obj_platform)
		on_platform = false;
}

if onwalljump != 0
{
	if button(Input.down)
		onwalljump = 0;

	if !(onblockL || onblockR)
		onwalljump = 0;
}
else if vspd > -1 && !button(Input.down)
{
	if slideready
		onwalljump = (onblockL - onblockR);
	else
		onwalljump = (onblockL && left) - (onblockR && right);
}

if onwalljump != 0
{
	look = onwalljump;
	
	if vspd < 0
		vspd *= 0.5;
	vspd = min(2, vspd);

	sprite_index = idxspr_slide;

	if button_press(Input.jump)
	{
		hspd_slide = (onblockL - onblockR) * 9;
        vspd = - 6;
		
		move_ignore = 9;
		onwalljump = 0;
		slideready = true;
		
        sprite_index = idxspr_jump;
		
		sfx(snd_jump);
    }
}


if place_meeting(x, y, obj_water)
	vspd = min(2, vspd);

player_movement();