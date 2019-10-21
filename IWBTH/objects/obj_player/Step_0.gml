/// @description Movement and Controls (No Flip)
/// @param No Flip
if FLIP==0 begin
    var L,R,h;
    L = keyboard_check_direct(global.leftbutton);
    R = keyboard_check_direct(global.rightbutton);
    if firstinput!=0 {
        if L && R {
            if firstinput==1 L=0;
            else if firstinput==-1 R=0;
        }
        else if R firstinput=1;
        else if L firstinput=-1;
        else firstinput=0;
    }
    if firstinput==0 {
        if R firstinput=1;
        else if L firstinput=-1;
    }
    
    h = R;
    if (h == 0) h = -L;
    
    if (frozen == true) h = 0;

    if (h != 0) {
        hspeed = maxSpeed * h * hjump_spd;// cSpeed;
        xScale = h;
        
        sprite_index = spr_PlayerRunning;
        image_speed = 0.5;
    } else {
        hspeed = 0;
        sprite_index = spr_PlayerIdle;
        image_speed = 0.2;
    }
    
    
    if (!onPlatform) {
        if (vspeed < -0.05) {
            sprite_index = spr_PlayerJump;
        }
        if (vspeed > 0.05) {
            sprite_index = spr_PlayerFall;
            image_speed = 0.2;
        }
    } else { 
        if (place_meeting(x,y+4,obj_platform) == false) {
            onPlatform = 0;
        }
    }
    
    if (vspeed > maxVspeed) {vspeed = maxVspeed;}
end

///Movement and Controls (Flip)
if FLIP==1 begin
    var L,R,h;
    
    R = keyboard_check_direct(global.leftbutton);
    L = keyboard_check_direct(global.rightbutton);
    //L-R Swap
    if firstinput!=0 {
        if L && R {
            if firstinput==1 L=0;
            else if firstinput==-1 R=0;
        }
        else if R firstinput=1;
        else if L firstinput=-1;
        else firstinput=0;
    }
    if firstinput==0 {
        if R firstinput=1;
        else if L firstinput=-1;
    }
    
    h = R;
    if (h == 0) h = -L;
    
    if (frozen == true) h = 0;
    
    if (h != 0) {
        hspeed = maxSpeed * h * cSpeed;
        xScale = h;
        sprite_index = spr_PlayerRunning;
        image_speed = 0.5;
    } else {
        hspeed = 0;
        sprite_index = spr_PlayerIdle;
        image_speed = 0.2;
    }
    
    if (!onPlatform) {
        if (vspeed > 0.05) {
            sprite_index = spr_PlayerJump;
        }
        if (vspeed < -0.05) {
            sprite_index = spr_PlayerFall;
            image_speed = 0.2;
        }
    } else { 
        if (place_meeting(x,y-4,obj_platform) == false) {
            onPlatform = 0;
        }
    }

    if (vspeed < -maxVspeed) {vspeed = -maxVspeed;}
end

///Action
if (!frozen) {
    if (keyboard_check(global.shotbutton)) {
        if del<=0 && kid_inv<=0 {scp_shoot(); del=7;}
    }

    if (keyboard_check_pressed(global.jumpbutton)) {
        if !onVine {
            if !FLIP scp_jump();
            else scp_jump_flip();
        }
    }

    if djump!=-1 && (keyboard_check_released(global.jumpbutton)) {
        if !FLIP scp_vjump();
        else scp_vjump_flip();
    }
}

///New Vinejumps (No Flip)
if FLIP==0 begin
    var L, R, J;
    L = keyboard_check_pressed(global.leftbutton);
    R = keyboard_check_pressed(global.rightbutton);
    J = keyboard_check_direct(jumpbutton);
    
    onVine=false;
    if (distance_to_object(obj_walljumpL)<2 || place_meeting(x-2,y,obj_ivy)) && place_free(x,y+1) {
        onVine=true;
        
        sprite_index=spr_PlayerSliding;
        image_speed=0.5;
        xScale=1;
        
        if R && J {
            sprite_index=spr_PlayerJump;
            vspeed = -9;
            reb_h = 6;
            
            scp_sfx(snd_WallJump,1);
        }
        
        if R && !J {
            sprite_index=spr_PlayerFall;
            reb_h = 3;
            
            onVine=false;
        }
    }
    else if (distance_to_object(obj_walljumpR)<2 || place_meeting(x+2,y,obj_ivy)) && place_free(x,y+1) {
        onVine=true;
        sprite_index=spr_PlayerSliding;
        image_speed=0.5;
        xScale=-1;
        
        if L && J {
            sprite_index=spr_PlayerJump;
            vspeed = -9;
            reb_h = -6;
            
            scp_sfx(snd_WallJump,1);
        }
        
        if L && !J {
            sprite_index=spr_PlayerFall;
            reb_h = -3;
            
            onVine=false;
        }
    }
    
    if onVine {
        maxFallSpeed=2;
        if maxFallSpeed<vspeed vspeed=maxFallSpeed;
        if vspeed<0 vspeed*=0.85;
    } else maxFallSpeed=8;
end

///New Vinejumps (Flip)
if FLIP==1 begin
    var L, R, J;
    R = keyboard_check_pressed(global.leftbutton);
    L = keyboard_check_pressed(global.rightbutton);
    J = keyboard_check_direct(jumpbutton);
    
    onVine=false;
    if (distance_to_object(obj_walljumpL)<2 || place_meeting(x-2,y,obj_ivy)) && place_free(x,y+1) {
        onVine=true;
        
        sprite_index=spr_PlayerSliding;
        image_speed=0.5;
        xScale=1;
        
        if R && J {
            sprite_index=spr_PlayerJump;
            vspeed = 9;
            reb_h = 6;
            
            scp_sfx(snd_WallJump,1);
        }
        
        if R && !J {
            sprite_index=spr_PlayerFall;
            reb_h = 3;
            
            onVine=false;
        }
    }
    else if (distance_to_object(obj_walljumpR)<2 || place_meeting(x+2,y,obj_ivy)) && place_free(x,y+1) {
        onVine=true;
        sprite_index=spr_PlayerSliding;
        image_speed=0.5;
        xScale=-1;
        
        if L && J {
            sprite_index=spr_PlayerJump;
            vspeed = 9;
            reb_h = -6;
            
            scp_sfx(snd_WallJump,1);
        }
        
        if L && !J {
            sprite_index=spr_PlayerFall;
            reb_h = -3;
            
            onVine=false;
        }
    }
    
    if onVine {
        maxFallSpeed=-2;
        if maxFallSpeed>vspeed vspeed=maxFallSpeed;
        if vspeed>0 vspeed*=0.85;
    } else maxFallSpeed=-8;
end

///Add spd
if FLIP==0 gravity = 0.4;
else if FLIP==1 gravity = -0.4;

if reb_v!=0 {
    vspeed+=reb_v;
    reb_v=sign(reb_v)*(abs(reb_v)-1);
}

if reb_h!=0 {
    hspeed+=reb_h;
    
    debug_reb+=reb_h;
    if place_free(x+hspeed,y) {
        if reb_h<0 reb_h++;
        else if reb_h>0 reb_h--;
    }
    else {reb_h=0; hspeed=0;}
}

if onBlock debug_reb=0;
gravity+=adgrav;
adgrav=0;

hspeed+=adhspd;
adhspd=0;

if 0<=setgrav {
    gravity=setgrav;
}

///Set & Modify
if persistent==1 {persistent=0;}
if INDEX!=noone {sprite_index=INDEX; image_speed=INDEX_SPEED;}

if 0<del {del-=1;}

if FLIP==0 image_yscale=1;
else if FLIP==1 image_yscale=-1;

if toc {
    x=tox; y=toy;
    toc=false;
    with(sys_cam) {
        if type=0 { //follow-target cam
            rx=target.x;
            ry=target.y;
        }
        
        else if type=1 { //room-cut cam 
            rx=floor(target.x/mx)*mx; ry=floor(target.y/my)*my;
        }
    
        else if type=2 { //follow-roomcut cam
            rx=floor(target.x/mx)*mx; ry=floor(target.y/my)*my;
        }
        
        event_user(0);
        x=clamp(rx+sx,xmin,xmax)+400;
        y=clamp(ry+sy,ymin,ymax)+304;
    }
}


onBlock=!place_free(x,y+vspeed);
cSpeed=clamp(cSpeed-0.1,1,5);

//hmore
/*if !hjump_break {
    if hjump_dir==0 {
        hjump_dir=firstinput;
    } else if firstinput!=0 {
        if hjump_dir!=firstinput hjump_break=true;
    }
}*/

hjump_spd=clamp(hjump_spd-0.1,1,5);

/* */
///Goto tproom
if cantp && !frozen begin

var TP=ord("T");
if keyboard_check_pressed(TP) && tpalpha==0 {
    tpon=true;
} else if !keyboard_check_direct(TP) {tpon=false;}

if tpon {
    if tpalpha<1 tpalpha+=0.1;
    else {
        if tpidx<20 tpidx++;
        else {
            tpon=false;
            tpidx=1000;
            var i=instance_create(x-16,y-16,obj_tp);
            with(i) {
                ROOM=rmteleport;
                gotox=672;
                gotoy=368;
                sleep=5;
            }
        }
    }
} else {
    tpalpha=max(tpalpha-0.1,0);
    tpidx=max(tpidx-4,0);
}

end

/* */
///vvvvvv
if VVV {
    if x<=0 reb_h=12;
    else if x>=room_width reb_h=-12;
    
    if y<=0 y+=room_height;
    else if y>=room_height y-=room_height;
}

/* */
///Vinejumps (No Flip) UNUSED
/*
if FLIP==0 begin
    onVine=0;
    if distance_to_object(obj_walljumpL) < 2 && place_free(x,y+1) 
    {
        onVine=1;
        vspeed=2;
        maxFallSpeed=2;
        sprite_index=spr_PlayerSliding;
        xScale=1
        image_speed=1/2;
        if keyboard_check_pressed(rightbutton) && keyboard_check(jumpbutton) {
            sprite_index=spr_PlayerJump;
            vspeed = -9;
            hspeed = 15;
            audio_play_sound(snd_WallJump,0,0);
        }
        
        if keyboard_check_pressed(rightbutton) && !keyboard_check(jumpbutton) {
            hspeed=3
            maxFallSpeed=8
            sprite_index=spr_PlayerFall;
        }
    
    }
    
    if distance_to_object(obj_walljumpR) < 2 && place_free(x,y+1) {
        onVine=1;
        vspeed=2;
        maxFallSpeed=2;
        sprite_index=spr_PlayerSliding;
        xScale=-1
        image_speed=1/2;
    
        if keyboard_check_pressed(leftbutton) && keyboard_check(jumpbutton) {
            sprite_index=spr_PlayerJump;
            vspeed = -9;
            hspeed = -15;
            audio_play_sound(snd_WallJump,0,0);
        }
        
        if keyboard_check_pressed(leftbutton) && !keyboard_check(jumpbutton) {
            hspeed=-3
            maxFallSpeed=8
            sprite_index=spr_PlayerFall;
        }
    }
    
    
    
    
    
    
    
    
    if place_meeting(x-2,y,obj_ivy) && place_free(x,y+1) 
    {
        onVine=1;
        vspeed=2;
        maxFallSpeed=2;
        sprite_index=spr_PlayerSliding;
        xScale=1
        image_speed=1/2;
        if keyboard_check_pressed(rightbutton) && keyboard_check(jumpbutton) {
            sprite_index=spr_PlayerJump;
            vspeed = -9;
            hspeed = 15;
            audio_play_sound(snd_WallJump,0,0);
        }
        
        if keyboard_check_pressed(rightbutton) && !keyboard_check(jumpbutton) {
            hspeed=3
            maxFallSpeed=8
            sprite_index=spr_PlayerFall;
        }
    
    } else if place_meeting(x+2,y,obj_ivy)  && place_free(x,y+1) {
        onVine=1;
        vspeed=2;
        maxFallSpeed=2;
        sprite_index=spr_PlayerSliding;
        xScale=-1
        image_speed=1/2;
    
        if keyboard_check_pressed(leftbutton) && keyboard_check(jumpbutton) {
            sprite_index=spr_PlayerJump;
            vspeed = -9;
            hspeed = -15;
            audio_play_sound(snd_WallJump,0,0);
        }
        
        if keyboard_check_pressed(leftbutton) && !keyboard_check(jumpbutton) {
            hspeed=-3
            maxFallSpeed=8
            sprite_index=spr_PlayerFall;
        }
    }
end

/* */
///Vinejumps (Flip) UNUSED
/*
if FLIP==1 begin
    var R, L;
    L=keyboard_check_pressed(rightbutton);
    R=keyboard_check_pressed(leftbutton);
    onVine=0;
    if distance_to_object(obj_walljumpL) < 2 && place_free(x,y-1) 
    {
        onVine=1;
        vspeed=-2;
        maxFallSpeed=-2;
        sprite_index=spr_PlayerSliding;
        xScale=1
        image_speed=1/2;
        if R && keyboard_check(jumpbutton) {
            sprite_index=spr_PlayerJump;
            vspeed = 9;
            hspeed = 15;
            audio_play_sound(snd_WallJump,0,0);
        }
        
        if R && !keyboard_check(jumpbutton) {
            hspeed=-3
            maxFallSpeed=-8
            sprite_index=spr_PlayerFall;
        }
    
    }
    
    if distance_to_object(obj_walljumpR) < 2 && place_free(x,y-1) {
        onVine=1;
        vspeed=-2;
        maxFallSpeed=-2;
        sprite_index=spr_PlayerSliding;
        xScale=-1
        image_speed=1/2;
    
        if L && keyboard_check(jumpbutton) {
            sprite_index=spr_PlayerJump;
            vspeed = 9;
            hspeed = -15;
            audio_play_sound(snd_WallJump,0,0);
        }
        
        if L && !keyboard_check(jumpbutton) {
            hspeed=3
            maxFallSpeed=-8
            sprite_index=spr_PlayerFall;
        }
    }
    
    
    
    
    
    
    
    
    if place_meeting(x-2,y,obj_ivy) && place_free(x,y-1) 
    {
        onVine=1;
        vspeed=-2;
        maxFallSpeed=-2;
        sprite_index=spr_PlayerSliding;
        xScale=1
        image_speed=1/2;
        if R && keyboard_check(jumpbutton) {
            sprite_index=spr_PlayerJump;
            vspeed = 9;
            hspeed = 15;
            audio_play_sound(snd_WallJump,0,0);
        }
        
        if R && !keyboard_check(jumpbutton) {
            hspeed=3
            maxFallSpeed=-8
            sprite_index=spr_PlayerFall;
        }
    
    } else if place_meeting(x+2,y,obj_ivy)  && place_free(x,y-1) {
        onVine=1;
        vspeed=-2;
        maxFallSpeed=-2;
        sprite_index=spr_PlayerSliding;
        xScale=-1
        image_speed=1/2;
    
        if L && keyboard_check(jumpbutton) {
            sprite_index=spr_PlayerJump;
            vspeed = 9;
            hspeed = -15;
            audio_play_sound(snd_WallJump,0,0);
        }
        
        if L && !keyboard_check(jumpbutton) {
            hspeed=-3
            maxFallSpeed=-8
            sprite_index=spr_PlayerFall;
        }
    }
end

/* */
/*  */
