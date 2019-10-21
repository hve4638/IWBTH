with(i)
if 185<set_angle {set_angle-=abs(180-set_angle)/5; other.timeline_position--;}
else {
    set_angle=180; OnAfter=2;
    other.t=0;
    other.DelX=1;
    other.Mf=0;
    other.OnEffect=1;
    other.DEF=-1;
}

