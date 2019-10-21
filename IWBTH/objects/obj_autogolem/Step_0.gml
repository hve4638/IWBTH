speed=clamp(speed+movspd,minspd,maxspd);
x+=movx; y+=movy;

if !(0<sleep) {
    if type==0 {
        if T mod 100 == 0 {
            var i=1, t;
            //scp_sfx(snd_Shoot,4);
            repeat(3) {
                var j=instance_create(x,y,obj_danmaku);
                j.image_xscale=0.5; j.image_yscale=0.5;
                j.sprite_index=spr_mball;
                j.direction=point_direction(x,y,Me.x,Me.y);
                if i==1 t=2;
                else if i==2 t=5;
                else if i==3 t=8;
                j.speed=t;
                
                i++;
            }
        }
    }
    else if type==1 {
        var w, h;
        w=8;
        h=obj_platform2.y-y;
        if collision_rectangle(x-w,y,x+w,y+h,obj_player,1,0) {
            scp_kill();
        }
    }
    else if type==2 {
        t2_l+=64;
        t2_r+=64;
        if min(t2_l,t2_r,t2_e)==t2_e {
            if 15<=T && T<=22 {
                scp_sfx(snd_Explode2,3);
                scp_shake(20,1,1);
                for(i=t2_s;i<=t2_e;i+=32) {
                    var j=instance_create(i+16,448-24*(T-15),obj_danmaku);
                    j.life=8; j.image_alpha=0; j.image_xscale=2; j.image_yscale=1.2;
                    var j=instance_create(i-16,448-24*(T-15),obj_danmaku);
                    j.life=8; j.image_alpha=0; j.image_xscale=2; j.image_yscale=1.2;
                    var j=instance_create(i,448-24*(T-15),obj_burst);
                    j.pt=40;
                    j.lt=24;
                    j.alarm[0]=5;
                }
            }
        } else T=0;
    }
    T++;
} else sleep--;


if life--==0 instance_destroy();

if 0<onlight scp_light(x,y,onlight);

