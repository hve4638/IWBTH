if obj_fakeplayer.x<x {image_xscale=1;}
else image_xscale=-1;

if hp<=0 && !die { die=true; onhealth=false;
    timeline_index=tin_boss2D;
    timeline_position=0;
    timeline_running=1;
    image_angle=6;
    x+=5; y+=10;
    alarm[0]=alarm[1]=alarm[2]=alarm[3]=alarm[4]=-1;
    alarm[5]=50;
    with(sys_cam){
        shake=30; stime=5;
    } audio_play_sound(snd_Explode,0,0);
with(obj_flameball){instance_destroy();}
}

if !die {

    with(sys_part){
        if ++prt[5]==0 event_user(0);
        part_system_depth(Sys[5],-9);
        part_emitter_region(Sys[5],emitter[5],other.x+36,other.x-36,other.y+55,other.y-55,0,1);
        part_emitter_burst(Sys[5],emitter[5],particle[5],10);
    }
    with(sys_part){
        if ++prt[11]==0 event_user(0);
        part_system_depth(Sys[11],-11);
        part_emitter_region(Sys[11],emitter[11],other.x+20,other.x-20,other.y+50,other.y-50,0,0);
        part_emitter_burst(Sys[11],emitter[11],particle[11],3);
    }
    if alarm[2]<5 {onAfter=0; image_alpha=0.8;}
    
    var kx, ky;
    kx=0; ky=0;
    
    if x+1<xx {kx=point_distance(x,0,xx,0)/8;} else if x<xx {xx=x;}
    if x-1>xx {kx=-point_distance(x,0,xx,0)/8;} else if x>xx {xx=x;}
    if y+1<yy {ky=point_distance(y,0,yy,0)/8;} else if y<yy {yy=y;} 
    if y-1>yy {ky=-point_distance(y,0,yy,0)/8;} else if y>yy {yy=y;}
    
    x+=kx; y+=ky;
}

if onAfter {armor=1.5;}
else if hp<=30 {
   if timeline_index==tin_boss2lp armor=0.5;
   else armor=0.1;
}

