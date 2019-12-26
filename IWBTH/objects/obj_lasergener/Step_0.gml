var FIREMIN, FIREMAX;
FIREMIN = firedelay;
FIREMAX = FIREMIN + firetime;

if FIREMIN <= life_idx && life_idx <= FIREMAX && (life_idx mod firecool == 0)
{
    with(instance_create(x,y,obj_laser))
	{
        image_angle = 90;
		num = 4;
        den_add = 1;
		life = 20;
    }
    
	screenshake(shakepow, shaketime);
	sfx(firesnd);
    /*
    i=instance_create(x,y,obj_charge);
    with(i) {
        image_blend=c_black
        image_xscale=0.3;
        image_yscale=1.4;
        image_angle=90;
        get_xscale=0.025;
        get_yscale=0.1;
        get_alpha=-0.05;
        ktime=20; depth=-9;
    }*/
}
else if FIREMAX < life_idx
	instance_destroy();

life_idx++;