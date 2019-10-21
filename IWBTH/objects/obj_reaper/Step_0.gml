if delX with(obj_fireball) if x<32 {x=8; instance_destroy();}
if OnEffect with(sys_part) {
    if ++prt[15]==0 event_user(0);
    part_emitter_region(Sys[15],emitter[15],800-other.Mf,800,438,458,1,0);
    part_emitter_burst(Sys[15],emitter[15],particle[15],25);
}

if 0<alarm[0] {DEF=0;}

if Start with(sys_part) {
    if ++prt[46]==0 event_user(0);
    part_emitter_region(Sys[46],emitter[46],other.x+8,other.x-8,other.y+8,other.y-8,1,1);
    part_emitter_burst(Sys[46],emitter[46],particle[46],5);
        
    if ++prt[17]==0 event_user(0);
    part_emitter_region(Sys[17],emitter[17],other.x-18,other.x+18,other.y-8,other.y+32,1,0);
    part_emitter_burst(Sys[17],emitter[17],particle[17],3);
} else if OnInv {
    if abs(image_alpha-0.5)<0.05 {image_alpha-=(image_alpha-0.5)/10;}
    else image_alpha=0.5;
    with(sys_part){
        if ++prt[17]==0 event_user(0);
        part_emitter_region(Sys[17],emitter[17],other.x-37,other.x+37,other.y+54,other.y-54,1,0);
        part_emitter_burst(Sys[17],emitter[17],particle[17],3);
    }
} else if timeline_index==tin_boss4lp && 15<timeline_position {
    with(sys_part){
        if ++prt[17]==0 event_user(0);
        part_emitter_region(Sys[17],emitter[17],other.x-37,other.x+37,other.y+54,other.y-54,1,0);
        part_emitter_burst(Sys[17],emitter[17],particle[17],7);
    }
} else with(sys_part) {
    if ++prt[17]==0 event_user(0);
    part_emitter_region(Sys[17],emitter[17],other.x-37,other.x+37,other.y+54,other.y-54,1,0);
    part_emitter_burst(Sys[17],emitter[17],particle[17],3);
}

//direction=90;
//speed+=0.05*DR;
//if 0.2<abs(speed) {DR=-DR;}

///cheat bangji


if cc++ mod 5 == 0
if x+4<Me.x {
    var i=instance_create(Me.x,448,obj_laser);
    with(i) {image_angle=90; ar=3; ad=2; depth=-10;}
    
    i=instance_create(Me.x,448,obj_charge);
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
    audio_play_sound(snd_blast,0,0);
}

direction=90;
if D {
 if 0.1<speed {D=!D;}
 speed+=0.01;
}
else {
 if speed<-0.1 {D=!D;}
 speed-=0.01;
}

