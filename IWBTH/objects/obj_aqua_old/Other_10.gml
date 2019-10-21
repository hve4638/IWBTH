ARMOR=1;
if phase==0 && HP<40 {
    phase=1;
    timeline_index=tin_boss5M;
    timeline_loop=0;
    timeline_position=0;
    timeline_running=1;
    timeline_speed=1;
} else if phase==1 && HP<50 {
    phase=2; HP=50;
    timeline_index=tin_boss5L;
    timeline_loop=0;
    timeline_position=0;
    timeline_running=1;
    timeline_speed=1;
}

else {
    if 416+64<Me.x && phase==0 {
        xx=Me.x;
        yy=Me.y;
    } else {
        xx=irandom_range(416+64+32,672);
        yy=irandom_range(128,512-128);
    }
    alarm[0]=60;
}

