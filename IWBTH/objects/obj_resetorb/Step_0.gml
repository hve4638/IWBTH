direction=90;
if D {
    if 0.1<speed {D=!D;} speed+=0.01;
}
else {
    if speed<-0.1 {D=!D;} speed-=0.01;
}

if del {
    image_alpha-=0.04;
    if image_alpha<0 instance_destroy();
}

