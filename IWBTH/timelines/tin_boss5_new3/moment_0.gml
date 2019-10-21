t_i=0;
t_delay1=25;

var lx, ly;
for(var i=-60;i<=60;i+=20) {
    lx=lengthdir_x(192,i) div 2;
    ly=lengthdir_y(192,i);
    
    var j=instance_create(x+lx div 10,y+ly div 10,obj_danmaku);
    with(j) {
        sprite_index=spr_spear;
        image_alpha=0.3;
        direction=point_direction(x,y,Me.x,Me.y);
        tag[0]=2;
        _x=x+lx;
        _y=y+ly;
        
        angledir=true;
    }
    scp_sfx(snd_ice1,3);
}

