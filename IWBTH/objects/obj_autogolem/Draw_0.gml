/// @description Hit
if hit {
    image_blend=c_red;
    image_alpha=0.8;
    hit=false;
} else {
    image_blend=c_white;
    image_alpha=1;
}
draw_self();

if !(0<sleep) {
    if type==1 {
        var i, a, n, t, w;
        i=0; n=-4; a=0.9; w=8;
        while(y+n+i*32<=room_height) {
            //draw_rectangle_colour(x-8,y+n+i*32,x+8,y+n+(i+1)*32,c_blue,c_blue,c_white,c_white,0);
            if collision_rectangle(x-w,y+n+i*32,x+w,y+n+(i+1)*32,obj_platform2,1,0)==noone draw_sprite_ext(spr_ruinbeam2,i!=0,x,y+n+i*32,1,1,0,c_white,t1_a);
            else {
                t=obj_platform2.y-(y+n+i*32);
                draw_sprite_part_ext(spr_ruinbeam2,i!=0,0,0,32,t,x-16,y+n+i*32,1,1,c_white,t1_a);
                break;
            }
            i++;
        }
    }
}


