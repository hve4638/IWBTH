/// @description Particle
with(sys_part) {
    if ++prt[24]==0 event_user(0);
    part_system_depth(Sys[24],-10);
    part_emitter_region(Sys[24],emitter[24],other.x-4,other.x+4,other.y-4,other.y+4,ps_shape_ellipse,1);
    part_emitter_burst(Sys[24],emitter[24],particle[24],15);
}

speed=clamp(speed+movspd,minspd,maxspd);

///Fuse
if --fuse<0 {
    if t++ mod 8 == 0 {
        if number--==0 instance_destroy();
        else {
            var j=instance_create(x,y,obj_danmaku);
            j.image_xscale=0.4;
            j.image_yscale=0.4;
            j.image_alpha=0;
            j.sprite_index=spr_danmaku_3
            j.direction=dir;
            j.speed=0;
            j.movspd=0.1;
            j.minspd=0.1;
            j.maxspd=3;
            j.angledir=true;
            dir+=irandom_range(100,120);
        }
    }
}

