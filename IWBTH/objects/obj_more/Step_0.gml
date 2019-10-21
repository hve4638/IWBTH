direction=90;
if D {
 if 0.15<speed {D=!D;}
 speed+=0.01;
}
else {
 if speed<-0.15 {D=!D;}
 speed-=0.01;
}

if alarm[0]=-1 {
 if image_alpha<1 {image_alpha+=0.05;}
}
else {
 if 0<image_alpha {image_alpha-=0.5;}
}

