var DELAY, FIREMIN, FIREMAX;
DELAY = firedelay;
FIREMIN = firedelay + 10;
FIREMAX = FIREMIN + firecool;

if I<=DELAY
{
    with(sys_part) {
        if ++prt[16]==0 event_user(0);
        part_type_color1(particle[16],other.col);
        part_system_depth(Sys[16],-5);
        part_emitter_region(Sys[16],emitter[16],other.x-9,other.x+9,other.y,other.y-16,1,1);
        part_emitter_burst(Sys[16],emitter[16],particle[16],other.dustcnt);
    }
}
else if FIREMIN<= I&& I<=FIREMAX && I mod 2 == 0
{
    var i=instance_create(x,y,obj_laser);
    with(i) {
        image_angle=90;
        ar=3; ad=2;
        image_index = other.ind;
    }
    
    scp_shake(shakepower,3,0);
    
    i=instance_create(x,y,obj_charge);
    with(i) {
        image_blend=c_black
        image_xscale=0.3;
        image_yscale=1.4;
        image_angle=90;
        get_xscale=0.025;
        get_yscale=0.1;
        get_alpha=-0.05;
        ktime=20; depth=-9;
    }
    scp_sfx(snd_blast,2);
}
else if FIREMAX+1<I
    instance_destroy();



I++;

