var _dir, _spd;
var _x, _y;
scp_shake(32,10,0);

for(j=1;j<=3;j++)
for(i=0;i<10;i++)
{
    _spd = 8;
    _dir = i/10 * 360 + j * 18;
    _x = lengthdir_x(j * 48,_dir);
    _y = lengthdir_y(j * 48,_dir);
    
    
    with(instance_create(x + _x,y + _y,obj_enemybullet))
    {
        speed = _spd;
        direction = _dir;
        image_xscale = 4;
        image_yscale = 4;
    }
}

