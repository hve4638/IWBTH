var lx, ly, dir, len, tx, ty;
dir=90+t_k; len=192;
for(var i=0;i<360;i+=360/t_j) {    
    lx=Me.x+lengthdir_x(len,dir+i);
    ly=Me.y+lengthdir_y(len,dir+i);
    var j=instance_create(lx,ly,obj_danmaku);
    with(j) {
        sprite_index=spr_spear;
        image_xscale=0.6; image_yscale=0.7;
        image_alpha=0; image_index=1;
        movalp=0.04; maxalp=0.3;
        isout=false;
        
        tag[0]=1; tag[1]=15;
        angledir=true;
        direction=point_direction(x,y,Me.x,Me.y);
        minspd=-10; maxspd=16;
    }
    //scp_sfx(snd_,3);
}

t_i++; t_j+=2; t_k=30;
t_j=min(t_j,10);
if t_i<6 timeline_position-=60;

