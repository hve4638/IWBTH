var lx, ly, dir, len;
len=180;
for(var i=0;i<360;i+=20) {
    dir=90+i;
    lx=t_x+lengthdir_x(len,dir);
    ly=t_y+lengthdir_y(len,dir);
    
    var j=instance_create(lx,ly,obj_danmaku);
    with(j) {
        sprite_index=spr_waterball;
        movalp=0.01; maxalp=0.15;
        image_alpha=0; image_index=1;
        isout=false;
        image_xscale=1.2;
        image_yscale=1.2;
        
        tag[0]=2; tag[1]=50+i div 3;
        angledir=true;
        direction=point_direction(x,y,other.t_x,other.t_y);
        minspd=-10; maxspd=16;
    }
}

