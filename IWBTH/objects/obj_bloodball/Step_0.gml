image_alpha=clamp(image_alpha+movalp,0,1);
if 0<sleep {
    sleep--;
    exit;
}

direction+=movdir;
speed=clamp(speed+movspd,minspd,maxspd);
if life--==0 instance_destroy();

if force {
    if (min(Me.x+32,800-64)<x && direction==0)
    || (x<max(Me.x-32,64) && direction==180)
    {
        movspd=-movspd/5*4;
        force=false;
    }
}

