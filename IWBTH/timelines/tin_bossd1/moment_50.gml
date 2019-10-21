if t_i<5
{
    var _dir = point_direction(x,y,Me.x,Me.y);
    with(instance_create(x,y,obj_enemybullet))
    {
        speed = 16;
        direction = _dir;
    }
    
    t_i++;
    scp_sfx(snd_Shoot,3);
    timeline_position -= 5;
}
else
{
    if !t_j
    {
        t_i = 0;
        t_j = 1;
        timeline_position -= 25;
    }
}

