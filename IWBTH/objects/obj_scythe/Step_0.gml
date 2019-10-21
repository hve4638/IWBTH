image_angle+=angle;
image_alpha+=alpha;

if 1<image_alpha {image_alpha=1;}
else if image_alpha<0 {instance_destroy();}

