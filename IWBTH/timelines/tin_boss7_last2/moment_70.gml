with(instance_create(t_i,448 - 32,obj_lasergener3))
{
    col = 128;//make_colour_rgb(53,0,53);
    firedelay = 40;
    dustcnt = 10;
    shakepower = 5;
    ind = 1;
}
//var i=instance_create(t_i,448,obj_lasergener2);
//i.snd=snd_blast;// i.t=15;
//i.FUSE = 40;

t_i-=64;
if 0<t_i timeline_position-=1;
else t_i+=32;

