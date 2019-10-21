/// @description Particle
if !init
{
    with(sys_part) {
        if ++prt[17]==0 event_user(0);
        part_emitter_region(Sys[17],emitter[17],other.x-37,other.x+37,other.y+54,other.y-54,1,0);
        part_emitter_burst(Sys[17],emitter[17],particle[17],3);
    }
}

if init_part
{
    with(sys_part){
        if ++prt[17]==0 event_user(0);
        part_emitter_region(Sys[17],emitter[17],other.x-37,other.x+37,other.y+54,other.y-54,1,0);
        part_emitter_burst(Sys[17],emitter[17],particle[17],10);
    }
}

if plat_part
{
    with(sys_part) {
        if ++prt[15]==0 event_user(0);
        part_emitter_region(Sys[15],emitter[15],other.platmin,other.platmax,384-5,384+15,1,0);
        part_emitter_burst(Sys[15],emitter[15],particle[15],20);
    }
}

///movement
direction=90;
if D {
 if 0.1<speed {D=!D;}
 speed+=0.01;
}
else {
 if speed<-0.1 {D=!D;}
 speed-=0.01;
}

///Cheat

if I mod 5 == 0
if x+4<Me.x {
    var i=instance_create(Me.x,384,obj_laser);
    with(i) {image_angle=90; ar=3; ad=2; depth=-10;}
    
    i=instance_create(Me.x,384,obj_charge);
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

