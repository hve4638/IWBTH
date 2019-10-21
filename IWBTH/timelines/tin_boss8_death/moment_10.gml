if 0<image_alpha
{
    image_alpha-=0.1;
    timeline_position--;
}
else
{
    var i = instance_create(0,0,obj_trigger);
    with(i)
    {
        On=true;
        cs=51;
    }
    
    
    instance_destroy();
}

