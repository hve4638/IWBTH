if Me.x<x {image_xscale=1;}
else image_xscale=-1;

if !die {
    if hp<=0 {
        die=true; onhealth=false;
        timeline_index=tin_boss2D;
        timeline_position=0;
        timeline_running=1;
        image_angle=6;
        x+=5; y+=10;
        alarm[0]=alarm[1]=alarm[2]=alarm[3]=alarm[4]=-1;
        alarm[5]=50;
        with(sys_cam){shake=30; stime=5;}
        audio_play_sound(snd_Explode,0,0);
        with(obj_flameball){instance_destroy();}
        
        audio_stop_sound(snd_Boss1);
        scp_bosskill(1);
    } else {
        with(sys_part){
            if ++prt[11]==0 event_user(0);
            part_system_depth(Sys[11],-11);
            part_emitter_region(Sys[11],emitter[11],other.x+10,other.x-10,other.y+30,other.y-20,0,0);
            part_emitter_burst(Sys[11],emitter[11],particle[11],2);
        }
        if alarm[2]<5 {onAfter=0; image_alpha=1;}
    }

    
    //Smooth Movement
    var kx, ky;
    kx=0; ky=0;
    if x+1<xx {kx=point_distance(x,0,xx,0)/8;} else if x<xx {xx=x;}
    if x-1>xx {kx=-point_distance(x,0,xx,0)/8;} else if x>xx {xx=x;}
    if y+1<yy {ky=point_distance(y,0,yy,0)/8;} else if y<yy {yy=y;} 
    if y-1>yy {ky=-point_distance(y,0,yy,0)/8;} else if y>yy {yy=y;}
    x+=kx; y+=ky;
}


if onAfter {armor=1.2;}
else if hp<=30 {
   if timeline_index==tin_boss2lp armor=0.5;
   else armor=0.1;
}

///Burn Pattern
if burn>0 {
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

