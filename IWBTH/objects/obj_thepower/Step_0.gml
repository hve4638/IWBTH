var kx, ky;
kx=0; ky=0;

if x+1<xx {kx=point_distance(x,0,xx,0)/8;} else if x<xx {xx=x;}
if x-1>xx {kx=-point_distance(x,0,xx,0)/8;} else if x>xx {xx=x;}
if y+1<yy {ky=point_distance(y,0,yy,0)/8;} else if y<yy {yy=y;} 
if y-1>yy {ky=-point_distance(y,0,yy,0)/8;} else if y>yy {yy=y;}

x+=kx; y+=ky;

debugtime+=1;


with(sys_part){
    if ++prt[48]==0 event_user(0);
    part_emitter_region(Sys[48],emitter[48],other.x+36,other.x-36,other.y+35,other.y-35,1,1);
    part_emitter_burst(Sys[48],emitter[48],particle[48],3);
}

if 350<=timeline_position && timeline_position<=410 && timeline_index=tin_bossL1
with(sys_part){
    if ++prt[48]==0 event_user(0);
    part_emitter_region(Sys[48],emitter[48],0,800,5,20,1,0);
    part_emitter_burst(Sys[48],emitter[48],particle[48],15);
}

