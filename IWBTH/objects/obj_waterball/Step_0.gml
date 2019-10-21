with (other) {
///Function
if On {
    tempA=direction; tempB=point_direction(x,y,obj_fakeplayer.x,obj_fakeplayer.y);
    tempB-=tempA;
    if 180<tempB {tempB-=360;}
    if 3<tempB && tempB<180 {
        direction+=speed/1.2;
    } else if -3>tempB && -180<tempB {
        direction-=speed/1.2;
    }
}

speed=clamp(speed+movspd,minspd,maxspd);
image_alpha=clamp(image_alpha+getalp,minalp,maxalp);
live++;

}
