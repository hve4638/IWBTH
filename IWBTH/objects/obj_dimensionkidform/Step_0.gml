/// @description Movement
h = hmove;
if (h != 0) {
    hspeed = maxSpeed * h * hjump_spd;
    if onslide
        sprite_index = spr_PlayerSlide;
    else
        sprite_index = spr_PlayerRunning;
    image_speed = 0.5;
} else {
    hspeed = 0;
    sprite_index = spr_PlayerIdle;
    image_speed = 0.2;
}

if (vspeed < -0.05) {
    sprite_index = spr_PlayerJump;
}
if (vspeed > 0.05) {
    sprite_index = spr_PlayerFall;
    image_speed = 0.2;
}
if (vspeed > maxVspeed) {vspeed = maxVspeed;}

///Modify
if onlook
{
    var _i = sign(Me.x - x);
    if _i!=0
        image_xscale = _i;
}

if onslide
{
    if 0<hjump_spd
        hjump_spd=max(hjump_spd-0.2,0);
    else 
    {
        onslide = false;
        hjump_spd = 1;
        hmove = 0;
    }
}
else
{
    hmove = 0;
    hjump_spd=clamp(hjump_spd-0.5,1,5);
}


I++;

///debug
if cheat
{
    if keyboard_check_pressed(ord("1"))
        scp_timeline(tin_bossd1);
    if keyboard_check_pressed(ord("2"))
        scp_timeline(tin_bossd2);
    if keyboard_check_pressed(ord("3"))
        scp_timeline(tin_bossd3);
}

