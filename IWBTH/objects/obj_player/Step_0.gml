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

var onVineR = place_meeting(x+1, y, obj_walljumpR) && onground;
var onVineL = place_meeting(x-1, y, obj_walljumpL) && onground;

if h != 0
{
	if !onVineR && !onVineL
		look = h;
	
	if (h == -1 && !onVineR) || (h == 1 && !onVineL)
		hspd = max_hspd * h;
	
    sprite_index = idxspr_run;
}
else
{
	hspd = 0;

    sprite_index = idxspr_idle;
}

if onground
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

vspd = clamp(vspd, -max_vspd, max_vspd);

if !onPlatform
{
    if vspd < -0.05
		sprite_index = idxspr_jump;
    else if vspd > 0.05
		sprite_index = idxspr_fall;
}
else
{
    if !place_meeting(x, y + 4, objPlatform)
		onPlatform = false;
}

if !frozen
{
	if button_press(Input.jump)
		player_jump();

	if button_release(Input.jump)
		player_vjump();
	
	if button(Input.attack) && shootdelay <= 0 
	{
		shootdelay = shootdelay_max;

		player_shoot();
	}
	
	if button_press(Input.dash) && dashdelay <= 0 && candash
	{
		dashdelay = dashdelay_max;
		
		player_dash();
	}
}

if 0 < dashtime
{
	hspd = dashdir * dashlen;
	vspd = 0;
	
	dashtime--;
	
	sprite_index = idxspr_dash;
}

if onVineL || onVineR
{
	look = onVineL - onVineR;
    
    vspeed = 2;
    sprite_index = idxspr_slide;

	if (onVineL && L) || (onVineR && R)
	{
        if button(Input.jump)
		{
			hspeed = onVineR ? -15 : 15;
            
            vspeed = -9;
            //audio_play_sound(sndWallJump,0,false);
            sprite_index = sprPlayerJump;
        }
		else
		{
			hspeed = onVineR ? -3 : 3;
            
            sprite_index = idxspr_fall;
        }
    }
}

if place_meeting(x, y, obj_water)
	vspd = min(2, vspd);

player_movement();