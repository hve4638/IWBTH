/// @description follow-view
var i=0;
with(target) {i=1;}

if i {
    if type=0 { //follow-target cam
        rx=target.x-mx/2;  ry=target.y-my/2;
        if rx<0 {rx=0;} else if room_width-mx<rx {rx=room_width-mx;}
        if ry<0 {ry=0;} else if room_height-my<ry {ry=room_height-my;}
    }
    
    else if type=1 { //room-cut cam 
        rx=floor(target.x/mx)*mx; ry=floor(target.y/my)*my;
    }
    
    else if type=2 { //follow-roomcut cam
        xx=floor(target.x/mx)*mx; yy=floor(target.y/my)*my;
        if rx+MR<xx {rx+=point_distance(rx,0,xx,0)/MX;}// else if rx<xx {rx=xx;}
        if rx-MR>xx {rx-=point_distance(rx,0,xx,0)/MX;}// else if rx>xx {rx=xx;}
        if ry+MR<yy {ry+=point_distance(ry,0,yy,0)/MY;}// else if ry<yy {ry=yy;} 
        if ry-MR>yy {ry-=point_distance(ry,0,yy,0)/MY;}// else if ry>yy {ry=yy;}
    }
    else if type=3 { //follow-variable cam
        xx=tx; yy=ty;
        if rx+MR<xx {rx+=point_distance(rx,0,xx,0)/MX;} else if rx<xx {rx=xx;}
        if rx-MR>xx {rx-=point_distance(rx,0,xx,0)/MX;} else if rx>xx {rx=xx;}
        if ry+MR<yy {ry+=point_distance(ry,0,yy,0)/MY;} else if ry<yy {ry=yy;} 
        if ry-MR>yy {ry-=point_distance(ry,0,yy,0)/MY;} else if ry>yy {ry=yy;}
    }
    else if type=4 { //follow-target cam
        xx=target.x-mx/2;  yy=target.y-my/2;
        if rx+MR<xx {rx+=point_distance(rx,0,xx,0)/MX;} else if rx<xx {rx=xx;}
        if rx-MR>xx {rx-=point_distance(rx,0,xx,0)/MX;} else if rx>xx {rx=xx;}
        if ry+MR<yy {ry+=point_distance(ry,0,yy,0)/MY;} else if ry<yy {ry=yy;} 
        if ry-MR>yy {ry-=point_distance(ry,0,yy,0)/MY;} else if ry>yy {ry=yy;}
    }
}

/*
if 0>rx {rx=0;}
if rx>room_width-mx {rx=room_width-mx;}
if 0>ry {ry=0;}
if ry>room_height-my {ry=room_height-my;}
*/

sx=0; sy=0;
if (0<stime || stime==-1) && 0<shake {
    if stime==-1 {shake--;}
    else {
        stime--;
        if shake<3 shake=3;
    }
    sx=irandom_range(shake-2,shake)*choose(-1,1);
    sy=irandom_range(shake-2,shake)*choose(-1,1);
} else shake=0;

rx = clamp(rx,xmin,xmax);
ry = clamp(ry,ymin,ymax);
event_user(0);

x=rx+sx+400;
y=ry+sy+304;

/*
x=clamp(x,0,room_width)+304;
y=clamp(y,0,room_height)+400;

/* */
///View-Fade
fade_set=clamp(fade_set+fade_get,0,1);

/* */
///Angle
__view_set( e__VW.Angle, 0, __view_get( e__VW.Angle, 0 ) mod 360 );

if (Toangle!=__view_get( e__VW.Angle, 0 ) && mvang<=0) mvang=abs(__view_get( e__VW.Angle, 0 )-Toangle);
if 0<mvang {
    __view_set( e__VW.Angle, 0, __view_get( e__VW.Angle, 0 ) + (20) );
    mvang-=20;
}

if mvang<0 {
    with(Me) {hspeed=0; vspeed=0;}
    __view_set( e__VW.Angle, 0, __view_get( e__VW.Angle, 0 ) + (mvang) );
    mvang=0;
}

/* */
///Optimization

with(all) {
    if object_index==sys_global
    || object_index==sys_part
    || object_index==sys_record
    || object_index==sys_lighting
    
    || object_index==obj_temp
    || object_index==obj_teleport
    || object_index==obj_trigger
    || object_index==obj_text
    || object_index==obj_platform
    || object_index==obj_block
    || object_index==obj_banblock
    || object_index==sys_cam
    || object_index==obj_water
    || object_index==obj_GAMEOVER
    || object_index==obj_aqua
    || object_index==obj_jijin
    || object_index==obj_killblock
    || object_index==obj_platform2
    || object_index==obj_replay
    || object_index==obj_chain
    || object_index==obj_create_tpevent
    || object_index==obj_sin1event
    || object_index==obj_shift
    || object_index==obj_ignis
    || object_index==obj_towerbackground
    {} else if point_distance(other.x+400,other.y+308,x,y)<1600 {visible=1;}
    else {visible=0;}
}
with(obj_block_tower)
    if point_distance(other.x+400,other.y+308,x,y)<1600 {visible=1;}
    else {visible=0;}
if vismask 
{
    with(all) visible=1;
    image_alpha = 1.0;
}







/* */
///Background
if FollowBG {
    __background_set( e__BG.X, 0, x-400 );
    __background_set( e__BG.Y, 0, y-304 );
}
if 1<SMOOTHBG_X __background_set( e__BG.X, 0, x div SMOOTHBG_X-400 );
if 1<SMOOTHBG_Y __background_set( e__BG.Y, 0, y div SMOOTHBG_Y-304 );

/* */
/*  */
