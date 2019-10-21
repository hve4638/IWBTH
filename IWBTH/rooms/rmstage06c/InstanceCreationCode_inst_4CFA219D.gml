target=obj_fakeplayer;
type=4;
mx=800; my=608;
if instance_exists(Me)
{
    rx = Me.x - 400;
    ry = Me.y - 304;
    
    if Me.x<800 xmax = 0;
    if Me.y>480 ymin = 480;
}
