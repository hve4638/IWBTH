if 4000<Me.x with(inst_EC34D4E7) On=true;
if 3400<Me.x with(sys_cam) ymax=0;

with(obj_spikeM) {
    if (y==16)
    {image_yscale=-1;}
    
    if 304<=y {
        if x==4992 {image_angle=90;}
        if x==5024 {image_angle=-90;}
    }
}