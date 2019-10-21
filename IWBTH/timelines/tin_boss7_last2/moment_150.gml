if (t_i mod 2 == 0)
{
    instance_create(Me.x,416,obj_lasergener3);
    instance_create(Me.x+64,416,obj_lasergener3);
    instance_create(Me.x-64,416,obj_lasergener3);
    
}
else
{
    instance_create(Me.x + 32,416,obj_lasergener3);
    instance_create(Me.x - 32,416,obj_lasergener3);
    instance_create(Me.x + 96,416,obj_lasergener3);
    instance_create(Me.x - 96,416,obj_lasergener3);
}

with(obj_lasergener3)
{
    col = make_colour_rgb(80,0,0);
    firedelay = 25;
    dustcnt = 10;
    ind = 1;
}

if t_i++<3 timeline_position-=48;
else {
    t_i=0;
}

