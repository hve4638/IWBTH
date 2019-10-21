if x<obj_fakeplayer.x {image_xscale=1;}
else image_xscale=-1;

if state==1 {
    if 16<x && x<800-16 {
        x+=image_xscale*2;
    }
}

