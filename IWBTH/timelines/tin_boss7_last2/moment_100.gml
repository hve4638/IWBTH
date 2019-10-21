//var i=instance_create(t_i,448,obj_lasergener2);
//i.snd=snd_blast;// i.t=15;
//i.FUSE = 40;
with(instance_create(t_i,448 - 32,obj_lasergener3))
{
    col = 128;//make_colour_rgb(53,0,53);
    firedelay = 40;
    dustcnt = 10;
    shakepower = 5;
    ind = 1;
}

t_i+=64;
if t_i<800 timeline_position--;
else {
    t_i=0;
    timeline_position=120;
}

