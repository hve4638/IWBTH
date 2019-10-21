FollowBG=false;
SMOOTHBG_X=false;
SMOOTHBG_Y=false;

shake=0; stime=0;
rx=x; ry=y;
fade_set=0;
fade_get=0;
fade_col=c_black;

image_alpha=0;

xmin=0; xmax=room_width-800;
ymin=0; ymax=room_height-608;

MR=1; MX=8; MY=10;

Toangle=0;
mvang=0;

if instance_exists(obj_player){
    rx=floor(obj_player.x/800)*800;
    ry=floor(obj_player.y/608)*608;
}

if room==rmstage03a
|| room==rmstage03b
|| room==rmstage03c
    {FollowBG=true;}


with(obj_fakeplayer) {
    if image_alpha=0.9 {
        other.shake=16;
        other.stime=8;
        image_alpha=1;
    }
}


__view_set( e__VW.Object, 0, sys_cam );
view_enabled=true;
__view_set( e__VW.WPort, 0, 800 );
__view_set( e__VW.HPort, 0, 608 );
__view_set( e__VW.WView, 0, 800 );
__view_set( e__VW.HView, 0, 608 );

__view_set( e__VW.VBorder, 0, 800 );
__view_set( e__VW.HBorder, 0, 608 );
__view_set( e__VW.VSpeed, 0, -1 );
__view_set( e__VW.HSpeed, 0, -1 );

