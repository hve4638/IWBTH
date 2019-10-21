with(obj_chain) {
    if point_distance(x,y,other.x,other.y)<abs(speed) instance_destroy();
}   

if instance_exists(obj_chain) {    
    timeline_position--;
} else ondarker=0;

