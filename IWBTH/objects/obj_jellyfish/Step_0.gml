if type==0 || !act {
    if (image_index<pre_idx) {
        sprite_index=spr_jellyfish;
        image_speed=0.3;
    }
}
else if type==1 {
    if i mod tm == 0 {
        speed=spd;
    } else if i mod tm == tm div 2 {
        speed=-spd;
    }
    i++;
}
else if type==2 {
    if i mod tm == 0 {
        if sprite_index==spr_jellyfish_attack {
            if image_index<4 {
                if x<Me.x image_xscale=1;
                else image_xscale=-1;
            } else {
                direction=point_direction(x,y,Me.x,Me.y);
                speed=spd; image_speed=0.15;
                i++;
            }
        } else {
            sprite_index=spr_jellyfish_attack;
            image_index=0;
            image_speed=0.25;
        }
        i--;
    } else if i mod tm == 1 {
        if 7.7<image_index {
            sprite_index=spr_jellyfish;
            image_speed=0.3;
            i++;
        } i--;
    }
    i++; 
}
else if type==3 { //One-side
    if i mod tm == 0 {
        speed=spd;
    }
    i++;
}

if speed<0 speed+=0.1;
else if speed>0 speed-=0.1;
pre_idx=image_index;

if life--==0 instance_destroy();

