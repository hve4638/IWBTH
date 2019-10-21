repeat((75-t_i*5) div 2) {
    var tx, ty;
    tx=x+irandom_range(-23,23);
    ty=y+irandom_range(-50,50);
    instance_create(tx,ty,obj_bubble);
}
if t_i++ < 10 timeline_position--;

