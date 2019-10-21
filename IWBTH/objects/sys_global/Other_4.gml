room_speed=50;
scp_bgm();
if instance_exists(obj_player) && obj_player.FLIP {
    __view_set( e__VW.Angle, 0, 180 );
    sys_cam.Toangle=180;
}
if room==rmstage04a showkey=true;
else showkey=false;

if room==rmstage06d towershader = true;
else towershader = false;

event_user(0);
with(obj_lockdestroy) instance_destroy();

///Wuss mode
if wuss {
    if room==rmboss1b
    || room==rmboss02
    || room==rmboss03
    || room==rmboss04 
    || room==rmboss05 
    || room==rmboss06 
    || room==rmstage04b {kid_mxhp=3; kid_hp=3;}
    else {kid_mxhp=1; kid_hp=1;}
}

else {
    kid_mxhp=1; kid_hp=1;
}

//kid_mxhp=21; kid_hp=21;

///UI
if room==Init
|| room==title
|| room==rmsin2
|| room==rmsin3
|| room==rmlastboss
|| room==rmending1
|| room==rmending2
|| room==rmending3
|| room==rmending4
|| room==rmending5
|| room==rmending6
|| room==rmending7
|| room==rmaltar
|| !uiset {onui=false;}
else {onui=true;}

///Fix
switch(room) {
    case Init:
    case title:
    case rmsin01:
    case rmsin2:
    case rmending1:
    case rmending2:
    case rmending3:
    case rmending4:
    case rmending5:
    case rmending6:
    case rmending7:
        reroom=false;
    break;
    default:
        reroom=true;
    break;
}

reroom_idx=0;

