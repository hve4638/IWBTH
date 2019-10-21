burn+=0.2;
with(sys_cam) {shake=10; stime=5;}

if ps<200 {ps+=2; timeline_position-=1;}
else {burn=0;}

