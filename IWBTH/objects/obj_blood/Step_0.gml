onblock=!place_free(x,y);

if onblock {
    if !preblock {
        gravity=0.002;
        vspeed=speed*0.1;
        speed=0;
    }
} else {
    gravity=0.2;
    gravity_direction=270;
}

if 1.5<vspeed vspeed=1.5;
preblock=onblock;

