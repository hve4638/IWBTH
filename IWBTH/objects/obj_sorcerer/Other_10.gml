if !instance_exists(obj_player) exit;
var isshd, r;
if Me.x<320 r=-1;
else if 1216-320<Me.x r=1;
else r=choose(1,-1);

if phase==0 && (SHIELD<=0 || HP/MAXHP<=0.75) {
    scp_pattern_reset(5,tin_boss6a,tin_boss6b,tin_boss6c,tin_boss6d,tin_boss6e);
    phase=1;
}

if phase==1 && HP/MAXHP<=0.66 {
    phase=2; isshd=true;
} else if phase==2 && HP/MAXHP<=0.33 {
    scp_pattern_reset(4,tin_boss6a,tin_boss6c_2,tin_boss6d,tin_boss6e);
    phase=3; isshd=true;
    ARMOR=0.5;
} else isshd=false;


follow=true;

if start {
    start=false;
    
    xx=clamp(Me.x+160,96,room_width-96);
    nx_p=tin_boss6a;
}
else {
    xx=clamp(Me.x+160*r,96,room_width-96);
    if isshd {
        follow=false;
        nx_p=tin_boss6_shieldgain;
    }
    else do {nx_p=scp_pattern_rand();} until(pv_p!=nx_p)
}

if phase==3 alarm[0]=60;
else alarm[0]=75;


