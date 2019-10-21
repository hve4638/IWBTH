if room=Init {
    room_goto(title);
}
if fps<=++T {T=0; time+=1;}

if keyboard_check_pressed(vk_escape) {
    if room==title game_end();
    else game_restart();
}

if cansave && keyboard_check_pressed(restartbutton) {
    if kid_hp<kid_mxhp && !instance_exists(obj_GAMEOVER) death+=1;
    scp_load(num);
}

if 0<kid_inv kid_inv--;

///About Cheat
if cheat && room!=title {
    if keyboard_check_pressed(vk_f3) {vismask=!vismask;}
    if keyboard_check_pressed(vk_f4) && room!=title room_goto(test);
    if keyboard_check_pressed(vk_f5) {
        if ondeal {tempdeal=DEAL; DEAL=1;}
        else DEAL=tempdeal;
        ondeal=!ondeal;
    }
    if keyboard_check_pressed(vk_f7) {ontp=!ontp;}
    if keyboard_check_pressed(vk_f8) {ongod=!ongod;}
    if keyboard_check_pressed(vk_f9) {showvar=!showvar;}
    
    
    if keyboard_check_pressed(ord("S")) {
        if instance_exists(obj_player) {
            scp_save(obj_player.x,obj_player.y,room);
            instance_create(Me.x,Me.y-8,obj_savetxt);
        }
    }
    /*if keyboard_check_pressed(ord('P')) {
        var i;
        i=0; repeat(7) ki[i++]=0;
        i=0; repeat(3) orb[i++]=0;
    }*/
    
    
    if keyboard_check_pressed(ord("Q")) with(obj_player) scp_kill();
    if keyboard_check_pressed(ord("H")) kid_hp=kid_mxhp;
    if keyboard_check_pressed(ord("J")) {
        kid_mxhp=5; kid_hp=5;
        with(instance_create(Me.x,Me.y,obj_charge))
        {
            image_blend = c_red;
            image_xscale = -1;
            image_yscale = -1;
            get_xscale = 0.2;
            get_yscale = 0.2;
            get_alpha = -0.02;
            ktime = 10;
        }
    }
    
    if keyboard_check_pressed(ord("W")) wuss=!wuss;
    if keyboard_check_pressed(ord("G")) guy=!guy;
    
    if keyboard_check(189) room_speed=clamp(room_speed-1,5,50);
    if keyboard_check(187) room_speed=clamp(room_speed+1,5,50);
}


if ondeal {
    if mouse_wheel_up() {DEAL=clamp(DEAL+1,-100,100);}
    else if mouse_wheel_down() {DEAL=clamp(DEAL-1,-100,100);}
    
    if mouse_check_button_pressed(mb_middle) {DEAL=100;}
}

if mouse_check_button(mb_left) && ontp {
    with(obj_player) {x=mouse_x; y=mouse_y;}
}

/* */
///Fix
if reroom {
    if keyboard_check_pressed(ord("P")) reroom_idx=0;    
    if keyboard_check(ord("P")) {
        if 150<=reroom_idx++ {
            reroom_idx=0;
            room_restart();
        }
    }
}

/* */
/*  */
