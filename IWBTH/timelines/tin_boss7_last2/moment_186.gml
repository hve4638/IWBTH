var i=instance_create(t_j-12*t_i,448,obj_lasergener2);
i.snd=snd_blast;
var i=instance_create(t_j+12*t_i,448,obj_lasergener2);
i.snd=snd_blast;

if t_i++ < 8 timeline_position-=3;

