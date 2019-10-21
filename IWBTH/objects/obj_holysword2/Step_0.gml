if image_alpha<0 {instance_destroy();}
else if 1<image_alpha {image_alpha=1;}
image_alpha+=movalp;

if 448-16<y {
    speed=0;
    OnAfter=0;
    if 70<t++ movalp=-0.05;
}

if OnAngle {
    tempA=direction; tempB=point_direction(x,y,Me.x,Me.y);
    tempB-=tempA;
    if 180<tempB {tempB-=360;}
    if 3<tempB && tempB<180 {
        direction+=0.2;
    } else if -3>tempB && -180<tempB {
        direction-=0.2;
    }
}

image_angle=direction-90;

