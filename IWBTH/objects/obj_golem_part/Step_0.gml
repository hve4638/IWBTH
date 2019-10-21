direction=90; 
speed+=d;

if 0.2<speed {d=-0.01}
else if -0.2>speed {d=0.01}

if set_angle!=pre_angle {
 pre_angle+=(set_angle-pre_angle)/7;
 if abs(set_angle-pre_angle)<2 {pre_angle=set_angle;}
}

image_angle=pre_angle;

