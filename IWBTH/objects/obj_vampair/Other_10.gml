/// @description Phase Set
if !instance_exists(obj_player) exit;
ARMOR=1;
if HP/MAXHP<=0.25 ARMOR = 0.75;
//if HP/MAXHP<=0.1 ARMOR = 0.5;

if phase==0 && HP/MAXHP<=0.9 {
    nx_p=tin_boss7_curse;
    phase=1;
    scp_pattern_reset(6,tin_boss7a,tin_boss7b,tin_boss7c,tin_boss7e,tin_boss7f,tin_boss7g);
}
else if phase==1 && HP/MAXHP<=0.75 {
    nx_p=ds_list_find_value(ds_mid,0);
    ds_list_delete(ds_mid,0);
    ARMOR=0;
    //nx_p=tin_boss7_r1;
    phase=2;
    scp_pattern_reset(6,tin_boss7a,tin_boss7b,tin_boss7c,tin_boss7e,tin_boss7f,tin_boss7g);
}
else if phase==2 && HP/MAXHP<=0.5 {
    nx_p=ds_list_find_value(ds_mid,0);
    ds_list_delete(ds_mid,0);
    ARMOR=0;
    //nx_p=tin_boss7_r2;
    phase=3;
    scp_pattern_reset(5,tin_boss7b_2,tin_boss7c,tin_boss7e_2,tin_boss7f,tin_boss7g_2);
}
else if phase==3 && HP/MAXHP<=0.25 {
    ARMOR=0;
    if !ds_list_empty(ds_mid) {
        /*with(sys_part) {
            if ++prt[44]==0 event_user(0);
            part_type_color1(particle[44],c_purple);
        }*/
        nx_p=ds_list_find_value(ds_mid,0);
        ds_list_delete(ds_mid,0);
        
        if !mid_st {
            if x<400 tp_x=800-128;
            else tp_x=128;
            tp_t=1;
            mid_st=true;
        } else alarm[0]=50;
        exit;
    } else {
        with(sys_part) {
            if ++prt[44]==0 event_user(0);
            part_type_color1(particle[44],128);
        }
        nx_p=scp_pattern_rand();
        phase=4; ARMOR=1;
    }
} else {
    if phase!=0 && phase<=2  && !instance_exists(obj_curse) {
        nx_p=tin_boss7_curse;
    }
    else
    do {nx_p=scp_pattern_rand();} until(current_pattern!=nx_p)
}

if nx_p==tin_boss7e_2
|| nx_p==tin_boss7_last1
||nx_p==tin_boss7_last2
||nx_p==tin_boss7_last3
||nx_p==tin_boss7_last4 {
    if x<400 tp_x=800-128;
    else tp_x=128;
}else {
    if x<400 tp_x=800-choose(128,192,224);
    else tp_x=choose(128,192,224);
}

tp_t=1;


//nx_p = tin_boss7_last2;
//phase = 3;
//
/*if (phase==3 && HP/MAXHP<0.1) {
    with(sys_part) {
        if ++prt[44]==0 event_user(0);
        part_type_color1(particle[44],c_purple);
    }
    phase=4;
}*/

/*else if phase==4 {
    ARMOR=0;
    if !ds_list_empty(ds_mid) {
        nx_p=ds_list_find_value(ds_mid,0);
        ds_list_delete(ds_mid,0);
        
        if x!=800-128 {
            tp_x=800-128;
            tp_t=1;
        } else {
            alarm[0]=100;
        }
        exit;
    } else {
        with(sys_part) {
            if ++prt[44]==0 event_user(0);
            part_type_color1(particle[44],128);
        }
        nx_p=choose(tin_boss7b_2,tin_boss7c,tin_boss7e_2,tin_boss7f,tin_boss7g_2);
        phase=5; ARMOR=1;
    }
}*/

/* */
/*  */
