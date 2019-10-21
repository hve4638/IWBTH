//image_speed=0; image_index=1;
if On {
 tempA=direction; tempB=point_direction(x,y,obj_fakeplayer.x,obj_fakeplayer.y);
 tempB-=tempA;
 if 180<tempB {tempB-=360;}
 if 3<tempB && tempB<180 {
  direction+=speed/2;
 }
 else if -3>tempB && -180<tempB {
  direction-=speed/2;
 }
}

if Sp==1 && speed<6 speed+=0.1;
else if Sp==-1 && 5.5<speed speed-=0.2; 

with(sys_part){
    if ++prt[49]==0 event_user(0);
    part_emitter_region(Sys[49],emitter[49],other.x,other.x,other.y,other.y,1,0);
    part_emitter_burst(Sys[49],emitter[49],particle[49],1);
} 


