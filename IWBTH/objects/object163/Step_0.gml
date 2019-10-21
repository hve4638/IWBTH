with (sys_TITLE) {
if ON==-2 {
    if image_alpha<L {image_alpha+=0.005;}
    else ON=1;
} else if ON!=1 {
    if image_alpha<L {image_alpha+=0.001;}
    else if L<image_alpha {image_alpha-=0.001;}
    else ON=1;
} else if alarm[0]==-1 {
    alarm[0]=5;
}

if ON!=0 && setconfig==0 {
    if keyboard_check_pressed(vk_up) {
     if (1<select && select<=3) || (11<select && select<=14) || (15<select && select<=17) || (21<select && select<=24)
      {select-=1;} 
    }
    else if keyboard_check_pressed(vk_down) {
     if (1<=select && select<3) || (11<=select && select<14) || (15<=select && select<17) || (21<=select && select<24)
      {select+=1;}
    }
    else if keyboard_check_pressed(vk_enter) {
        if select==1 {select=11;}
        else if select==2 {select=21;}
        else if select==3 {game_end();}
        else if 11<=select && select<=13 {num=select-10; select=16;}
        else if select==14 {select=1;}
        else if select==15 {
            persistent=1; cansave=true;
            with(obj_temp) {part_system_destroy(SnameT1);}
            room_goto(rmstage01a);
            scp_publicload();
            time=0; death=0;
            instance_destroy();
        }
        else if select==16 {
            with(obj_temp) {part_system_destroy(SnameT1);}
            persistent=1; cansave=true;
            scp_publicload();
            scp_localload();
            instance_destroy();
        } else if select==17 {select=14;}
        else if select==21 {bgmset=!bgmset;}
        else if select==22 {setconfig=1;}
        else if select==23 {cheat=!cheat;}
        else if select==24 {select=2; scp_configsave();}
    }
    if keyboard_check_pressed(vk_anykey) && select==0 {select=1;}
} else if 0<setconfig {
    if keyboard_check_pressed(vk_anykey) {
        if setconfig=1 {leftbutton=keyboard_key;}
        else if setconfig=2 {rightbutton=keyboard_key;}
        else if setconfig=3 {downbutton=keyboard_key;}
        else if setconfig=4 {shotbutton=keyboard_key;}
        else if setconfig=5 {jumpbutton=keyboard_key;}
        else if setconfig=6 {restartbutton=keyboard_key;}
        setconfig+=1;
    } if 7<=setconfig {setconfig=0; scp_configsave();}
}

}
