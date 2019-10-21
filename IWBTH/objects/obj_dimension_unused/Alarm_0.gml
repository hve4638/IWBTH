var tidx
if phase==1 tidx=choose(tin_bossL1,tin_bossL2,tin_bossL3,tin_bossL4);
else if phase==2 tidx=choose(tin_bossL5);
else exit;

if instance_exists(obj_player) scp_timeline(tidx);
else {
    if phase==1 {
        scp_shake(4,500,1);
        with(sys_cam) {
            fade_get=0.01; fade_col=c_black;
        }
    }
}

//scp_timeline(tin_bossL4);

