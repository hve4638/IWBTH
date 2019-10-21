if t_j mod 2 == 0 t_k = choose(true,false);

if t_k
{
    with(instance_create(Me.x,384,obj_lasergener3))
    {
        col = make_colour_rgb(53,0,53);
        firedelay = 20;
        dustcnt = 10;
    }
    
    with(instance_create(Me.x-64,384,obj_lasergener3))
    {
        col = make_colour_rgb(53,0,53);
        firedelay = 20;
        dustcnt = 10;
    }
    
    with(instance_create(Me.x+64,384,obj_lasergener3))
    {
        col = make_colour_rgb(53,0,53);
        firedelay = 20;
        dustcnt = 10;
    }
}
else
{
    with(instance_create(Me.x+32,384,obj_lasergener3))
    {
        col = make_colour_rgb(53,0,53);
        firedelay = 20;
        dustcnt = 10;
    }
    
    with(instance_create(Me.x-32,384,obj_lasergener3))
    {
        col = make_colour_rgb(53,0,53);
        firedelay = 20;
        dustcnt = 10;
    }
    
    with(instance_create(Me.x+96,384,obj_lasergener3))
    {
        col = make_colour_rgb(53,0,53);
        firedelay = 20;
        dustcnt = 10;
    }
    
    with(instance_create(Me.x-96,384,obj_lasergener3))
    {
        col = make_colour_rgb(53,0,53);
        firedelay = 20;
        dustcnt = 10;
    }
}

if t_j++<4 {
    t_k = !t_k;
    timeline_position -= 37;
}
else timeline_position += 30;

