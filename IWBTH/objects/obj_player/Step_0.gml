#region keyinput
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
#endregion

#region movement
var onblockR = !onground && tile_cling(1, 0);
var onblockL = !onground && tile_cling(-1, 0);

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

#region action
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
		if attacktype == Attacktype.gun && button(Input.attack)
		{
			attackdelay = attackdelay_gun;

			scr_player_shoot();
		}
		else if attacktype == Attacktype.sword && button(Input.attack)
		{
			attackdelay = attackdelay_sword;
			
			scr_player_slash();
		}
	}
	
	if button_press(Input.dash) && candash
	{
		dashdelay = dashdelay_max;
		
		scr_player_dash();
	}
}
#endregion

#region dash & platform
if 0 < dashtime
{
	hspd = dashdir * dashlen;
	vspd = 0;
	
	dashtime--;
	
	/*if dashtime == 0
	{
		hspd_slide = dashdir * dashlen;
	}*/
	
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
#endregion

#region walljump
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
#endregion

player_movement();