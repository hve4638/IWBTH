var i=instance_create(t_i,448,obj_lasergener2);
i.snd=1;// i.t=15;

t_i+=64;
if t_i<800 timeline_position--;
else {
    t_i=0;
    timeline_position=120;
}

