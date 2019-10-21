repeat(t_i div 2) {
    var tx, ty;
    tx=x+irandom_range(-23,23);
    ty=y+irandom_range(-50,50);
    instance_create(tx,ty,obj_bubble);
}
image_alpha=1-(t_i/75);

if t_i++ < 75 timeline_position--;
else t_i=0;

