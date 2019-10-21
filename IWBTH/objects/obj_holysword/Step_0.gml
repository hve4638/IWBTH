if image_alpha<0 {instance_destroy();}
else if 1<image_alpha {image_alpha=1;}
image_alpha+=get_alpha;

if 360<set_angle {set_angle-=360;}
else if set_angle<0 {set_angle+=360;}
image_angle=set_angle-90;

