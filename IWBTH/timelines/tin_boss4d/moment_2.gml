with(i) {angle+=0.5; OnAfter=1;}
if t++<15 {Mf=t*60; timeline_position--;}
else {timeline_position+=20; i.OnAfter=0;}

