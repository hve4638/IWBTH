/// @description f_spd
if f_dir {
    f_spd+=0.01;
    if 0.2<f_spd f_dir=!f_dir;
} else {
    f_spd-=0.01;
    if f_spd<-0.2 f_dir=!f_dir;
}
f_y+=f_spd;

if Me.x<x image_xscale=1;
else image_xscale=-1;
image_alpha=clamp(image_alpha+movalp,minalp,maxalp);

if !die { 
    with(sys_part) {
        if ++prt[11]==0 event_user(0);
        part_system_depth(Sys[11],-11);
        part_emitter_region(Sys[11],emitter[11],other.x+10,other.x-10,other.y+30,other.y-20,0,0);
        part_emitter_burst(Sys[11],emitter[11],particle[11],2);
    }

    //Smooth Movement
    if x+1<xx {x+=point_distance(x,0,xx,0)/8;} else if x<xx {xx=x;}
    if x-1>xx {x+=-point_distance(x,0,xx,0)/8;} else if x>xx {xx=x;}
    if y+1<yy {y+=point_distance(y,0,yy,0)/8;} else if y<yy {yy=y;} 
    if y-1>yy {y+=-point_distance(y,0,yy,0)/8;} else if y>yy {yy=y;}
    
    if point_distance(x,y,xx,yy)<12 && 0<alarm[1] {
        onAfter=0; maxalp=1; movalp=0.05;
        if 30<alarm[1] alarm[1]=30;
    }
}


if HP<=30 {
   if timeline_index==tin_boss2lp ARMOR=0.5;
   else ARMOR=0.1;
}

///Burn Pattern
if 0<burn {
    with(sys_part){
        if ++prt[20]==0 event_user(0);
        part_system_depth(Sys[20],-25);
        part_emitter_region(Sys[20],emitter[20],800,1600,608,512,0,0);
        part_emitter_burst(Sys[20],emitter[20],particle[20],15);
    }
}

with(obj_player) {
    if place_meeting(x,y,obj_water) {other.fire=other.fire div 2;}
    else {
        if 50<other.fire other.fire++;
        other.fire+=floor(other.burn);
    }
}

if 0<fire {
    with(sys_part){
        if ++prt[11]==0 event_user(0);
        part_system_depth(Sys[11],-11);
        part_emitter_region(Sys[11],emitter[11],Me.x-8,Me.x+8,Me.y-8,Me.y+8,0,0);
        part_emitter_burst(Sys[11],emitter[11],particle[11],other.fire div 50);
    }
}
if 250<fire {fire=0; with(obj_player) scp_kill();}

