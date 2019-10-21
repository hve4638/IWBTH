/// @description onmov
if onmov {
    direction=90;
    if D {
        if 0.1<speed {D=!D;} speed+=0.01;
    }
    else {
        if speed<-0.1 {D=!D;} speed-=0.01;
    }
}

dalpha=clamp(dalpha+dmovalp,0,1);

///Particle
if onfire with(sys_part){
    if ++prt[53]==0 event_user(0);
    part_emitter_region(Sys[53],emitter[53],other.x+10,other.x-10,other.y+10,other.y-10,1,1);
    part_emitter_burst(Sys[53],emitter[53],particle[53],5);
}

if onignis with(sys_part){
    if ++prt[11]==0 event_user(0);
    part_system_depth(Sys[11],-11);
    part_emitter_region(Sys[11],emitter[11],other.x+10,other.x-12,other.y+24,other.y-20,0,0);
    part_emitter_burst(Sys[11],emitter[11],particle[11],other.cntignis);
}

if onreaper {
    var tx, ty;
    tx=obj_sealedstone.x;
    ty=obj_sealedstone.y;
    
    with(sys_part) {
        if ++prt[54]==0 event_user(0);
        part_emitter_region(Sys[54],emitter[54],470,1600,416+20,416+32+8,1,0);
        part_emitter_burst(Sys[54],emitter[54],particle[54],30);
        
        if ++prt[55]==0 event_user(0);
        part_emitter_region(Sys[55],emitter[55],461,490,448-24,448+24,1,0);
        part_emitter_burst(Sys[55],emitter[55],particle[55],3);
        
        part_system_depth(Sys[55],choose(-10,-10,-20));
        part_emitter_region(Sys[55],emitter[55],tx-8,tx+8,ty-8,ty+6,1,0);
        part_emitter_burst(Sys[55],emitter[55],particle[55],1);
    }
}


if ondark {
    with(sys_part) {
        if ++prt[42]==0 event_user(0);
        part_emitter_region(Sys[42],emitter[42],other.x+24,other.x-24,other.y+60,other.y-60,1,0);
        part_emitter_burst(Sys[42],emitter[42],particle[42],1);
        
        if ++prt[50]==0 event_user(0);
        part_emitter_region(Sys[50],emitter[50],0,800,608,608+16,0,0);
        part_emitter_stream(Sys[50],emitter[50],particle[50],1);
   }
}

