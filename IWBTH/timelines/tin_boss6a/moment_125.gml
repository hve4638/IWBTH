var k=ds_list_find_value(t,p_i);

var j=instance_create(p_t+k*48,irandom_range(-96,0),obj_meteo);
j.movspd=1; j.speed=1;
j.direction=270+irandom_range(-5,5);

if ++p_i<ds_list_size(t)-3 {
    timeline_position-=p_j;
} else {
    ds_list_destroy(t);
}

