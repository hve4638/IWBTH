/// @description Particle
if phase == 1 {
    var x1, x2, y1, y2, c;
    x1=x+part_x1;
    x2=x+part_x2;
    y1=y+part_y1;
    y2=y+part_y2;
    c=part_cnt;
    
    with(sys_part){
        if ++prt[48]==0 event_user(0);
        part_emitter_region(Sys[48],emitter[48],x1,x2,y1,y2,1,1);
        part_emitter_burst(Sys[48],emitter[48],particle[48],c);
    }
}

///Smooth Movement
var kx, ky;

kx=0; ky=0;
if x+1<xx {kx=point_distance(x,0,xx,0)/8;} else if x<xx {xx=x;}
if x-1>xx {kx=-point_distance(x,0,xx,0)/8;} else if x>xx {xx=x;}
if y+1<yy {ky=point_distance(y,0,yy,0)/8;} else if y<yy {yy=y;} 
if y-1>yy {ky=-point_distance(y,0,yy,0)/8;} else if y>yy {yy=y;}
x+=kx; y+=ky;

///Bullet
if MELT
with(obj_bullet) {
    image_alpha-=0.05;
    if image_alpha<=0.3 instance_destroy();
}

if phase==2 {
    with(obj_bullet) {
        audio_play_sound(snd_BossHit,0,0);
        with(other) {
            HP-=DEAL*ARMOR;
            event_user(2);
        }
        instance_destroy();
    }
}

///Event
if 0<=phase_event {
    if phase==1 {
        if phase_event==0 {
            xx=400; yy=320;
            alarm[0]=-1;
            scp_timeline(noone);
            scp_shake(16,75,1);
            t=0; inv=true;
            line_alpha=1;
        }
        else if phase_event==100 {
            __background_set_colour( c_black );
            with(sys_shader) instance_destroy();
        }
        else if phase_event==120 {
            phase_event=-5; inv=false;
            with(obj_player) white=1;
            scp_timeline(tin_bossL5);
            MAXHP=30000; HP=30000 drawhp=30000;
            phase=2;
            
            image_xscale=0;
            image_yscale=0;
        }
        
        if phase_event<75 {
            with(sys_part) {
                if ++prt[51]==0 event_user(0);
                part_emitter_region(Sys[51],emitter[51],other.x+28,other.x-28,other.y+28,other.y-28,1,1);
                part_emitter_burst(Sys[51],emitter[51],particle[51],20);
            }
        }
        else if phase_event>75 {
            line_alpha+=0.05;
            line=true;
        }
        if 50<phase_event {
            image_alpha=1;
            image_blend=c_black;
            image_xscale+=0.5; image_yscale+=0.5;
            if place_meeting(x,y,obj_player) with(obj_player) white=1;
        }
    }
    
    
    else if phase==2 {
        if phase_event==0 {
            scp_timeline(noone);
            with(obj_dimensionparticle) instance_destroy();
            
            image_xscale=0;
            image_yscale=0;
            line_alpha=1;
            inv=true;
            MELT=false;
            with(obj_player) {
                white=0;
                image_blend=c_white;
            }
        }
        else if phase_event<50 {
            line_alpha-=0.02;
        }
        else if phase_event==50 {
            line=false;
        }
        
        if phase_event==60 {
            MAXHP=200; HP=200;
            drawhp=200;
            inv=false;
            
            bg_c=radtodeg(pi*3/2);
            phase=3;
            phase_event=-5;
        }
        
    }
    
    
    if 0<=phase_event phase_event++;
}

///Background effect
if phase==3 {
    var i, j;
    j=clamp(round(sin(degtorad(bg_c))*130+115),0,255);
    
    i=instance_create(0,0,obj_gra);
    i.col=make_colour_rgb(j,j,j);
    i.x=400; i.y=200; i.ad=1.8;
    i.w=6; i.h=14; 
    
    bg_c++;
}

///bgm
/*
if phase==1 && HP/MAXHP<0.25 {
    if trigger==0 {
        audio_sound_gain(perbgm, 0, 5000);
        trigger=1;
    }
}

/* */
/*  */
