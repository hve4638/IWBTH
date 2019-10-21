/// @description set
if ON && !setconfig {
    var i=keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up);
    select[setselect]+=i;
    
    if setselect==0 {
        select[0]=clamp(select[0],0,2);
    } else if setselect==1 {
        if select[0]==0 select[1]=clamp(select[1],0,3);
        else if select[0]==1 select[1]=clamp(select[1],0,3);
        if i!=0 && 0<=select[1] && select[1]<=2 {num=select[1]+1;}
    } else if setselect==2 {
        if select[0]==0 {
            if 0<=select[1] && select[1]<=2 {
                if issave[num] select[2]=clamp(select[2],0,2);
                else select[2]=clamp(select[2],0,1);
            }
        }
        else if select[0]==1 {
            if select[1]==1 select[2]=clamp(select[2],0,7);
        }
    }
    else if setselect==3 {
        select[3]=clamp(select[3],0,2);
    }
    
    if keyboard_check_pressed(vk_enter) {
        if setselect==0 {
            if select[0]==0 {setselect=1; num=1;}
            else if select[0]==1 setselect=1;
            else if select[0]==2 game_end();
        }
        else if setselect==1 {
            if select[0]==0 {
                if 0<=select[1] && select[1]<=2 setselect=2;
                else if select[1]==3 {setselect=0; select[1]=0;}
            }
            else if select[0]==1 {
                if select[1]==0 bgmset=!bgmset;
                else if select[1]==1 setselect=2;
                else if select[1]==2 && isclear cheat=!cheat;
                else if select[1]==3 {setselect=0; select[1]=0; scp_configsave();}
            }
        }
        else if setselect==2 {
            if select[0]==0 {
                if 0<=select[1] && select[1]<=2 {
                    if select[2]==0 { //game start
                        if issave[num] { //LOAD GAME
                            persistent=1; cansave=true;
                            scp_publicload();
                            scp_load();
                            instance_destroy();
                        } else { //NEW GAME
                            setselect=3;
                            wuss=0;
                        }
                        
                    }
                    if issave[num] {
                        if select[2]==1 {setselect=3;}
                        else  if select[2]==2 {setselect=1; select[2]=0;}
                    } else {
                        if select[2]==1 {setselect=1; select[2]=0;}
                    }
                    
                }
            }
            else if select[0]==1 {
                if select[1]==1 {
                    if 0<=select[2] && select[2]<=6 setconfig=select[2]+1;
                    else if select[2]==7 {setselect=1; select[2]=0; scp_configsave();}
                }
            }
        }
        else if setselect==3 {
            if select[0]==0 {
                if 0<=select[1] && select[1]<=2 {
                    if select[2]==1 && issave[num] {
                        if select[3]==0 s_dif[num]=!s_dif[num]; //difficult
                        else if select[3]==1 { //delete
                            if show_question("Are you sure?") {
                                issave[num]=false;
                                
                                setselect=1;
                                select[2]=0;
                                select[3]=0;
                            }
                        }
                        else if select[3]==2 { //back
                            ds_map_clear(ds_tmp2);
                            ds_map_read(ds_tmp2,sys_global.ldata[num]);
                            ds_tmp2[? "wuss"] = s_dif[num];
                            sys_global.ldata[num]=ds_map_write(ds_tmp2);
                            scp_localsave();
                            
                            setselect=2;
                            select[3]=0;
                        }
                    }
                    else if select[2]==0 && !issave[num] {
                        if select[3]==0 { //start
                            persistent=1; cansave=true;
                            scp_publicload();
                            scp_save(96+16,480+16,rmstage01a);
                            room_goto(rmstage01a);
                            time=0; death=0;
                            instance_destroy();
                        }
                        else if select[3]==1 wuss=!wuss;
                        else if select[3]==2 { //back
                            setselect=2;
                            select[3]=0;
                        }
                    }
                }
            }
        }
    }
}
else if 0<setconfig {
    if keyboard_check_pressed(vk_anykey) {
        if setconfig=1 {upbutton=keyboard_key;}
        else if setconfig=2 {downbutton=keyboard_key;}
        else if setconfig=3 {leftbutton=keyboard_key;}
        else if setconfig=4 {rightbutton=keyboard_key;}
        else if setconfig=5 {jumpbutton=keyboard_key;}
        else if setconfig=6 {shotbutton=keyboard_key;}
        else if setconfig=7 {restartbutton=keyboard_key;}
        setconfig=0; scp_configsave();
    }
}
else if !ON {
    if keyboard_check_pressed(vk_anykey) {
        if keyboard_key==vk_f12 {isclear=true;}
        ON=true;
    }
}

///Alpha
if I mod 5 == 0 {
    if ceil(to_alpha*100)==ceil(image_alpha*100) to_alpha=random_range(0.45,0.75);
    else image_alpha+=sign(to_alpha-image_alpha)*0.01;
}
I++;

