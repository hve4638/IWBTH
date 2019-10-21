var rr=16, am=1, ar=2, ad=1, l=0;
switch(++t)
{
    case 1: {
        with(a1) {
            repeat(30) {
                var i=instance_create(x-rr*l,y-rr*l,obj_laser);
                i.ar=ar; i.ad=ad; i.image_angle=-45;
                var i=instance_create(x,y,obj_laser);
                i.ar=ar; i.ad=ad; i.image_angle=-45+180;
                l++;
            } instance_destroy();
        }
    } break;
    case 2: {
        with(a2) {
            repeat(30) {
                var i=instance_create(x+rr*l,y-rr*l,obj_laser);
                i.ar=ar; i.ad=ad; i.image_angle=45;
                var i=instance_create(x,y,obj_laser);
                i.ar=ar; i.ad=ad; i.image_angle=45+180;
                l++;
            } instance_destroy();
        }
    } break;
    case 3: {
        with(a3) {
            repeat(30) {
                var i=instance_create(x+rr*l,y+rr*l,obj_laser);
                i.ar=ar; i.ad=ad; i.image_angle=-45;
                var i=instance_create(x,y,obj_laser);
                i.ar=ar; i.ad=ad; i.image_angle=-45+180;
                l++;
            } instance_destroy();
        }
    } break;
    case 4: {
        with(a4) {
            repeat(30) {
                var i=instance_create(x-rr*l,y+rr*l,obj_laser);
                i.ar=ar; i.ad=ad; i.image_angle=45;
                var i=instance_create(x,y,obj_laser);
                i.ar=ar; i.ad=ad; i.image_angle=45+180;
                l++;
            } instance_destroy();
        }
    } break;
}

audio_play_sound(snd_blast,0,0);
if t<=4 timeline_position-=2;

