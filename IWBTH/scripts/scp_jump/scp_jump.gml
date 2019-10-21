if place_meeting(x, y, obj_water) { //inwater
    vspeed = -jumpw;
    if place_meeting(x, round(y+1), obj_block) scp_sfx(snd_Jump,5);
    else scp_sfx(snd_DJump,5);
    djump = 0; deffect = 0; cSpeed = 1;
} else if (place_meeting(x, round(y+1), obj_block) || onPlatform) {
    vspeed = -jump;
    scp_sfx(snd_Jump,5);
    djump = 1; deffect = 0; cSpeed = 1;
} else if djump == 1 {
    vspeed =  (-jump2) * (deffect == 0)
            + (-16) * (deffect == 2)
            + (-6) * (deffect == 1);
    if deffect == 1 {hjump_spd=7; hjump_break=0; hjump_dir=0;}
    else hjump_spd=1;
    
    scp_sfx(snd_DJump,5);
    
    /*if deffect==2 {
        djump = -1;
    } else*/
    djump = 0;
}
