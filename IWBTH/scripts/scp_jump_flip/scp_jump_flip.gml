var w=place_meeting(x, y, obj_water);

if ((place_meeting(x, round(y-1), obj_block) || onPlatform) && !w) {
    vspeed = jump;
    scp_sfx(snd_Jump,10);
    djump = 1; deffect = 0; cSpeed = 1;
} else if djump == 1 || w {
    vspeed =  (jump2) * (deffect == 0)
            + (16) * (deffect == 2)
            + (6) * (deffect == 1);
    if deffect == 1 {cSpeed = 6;}
    else cSpeed=1;
    scp_sfx(snd_DJump,10);
    djump = 0;
}
