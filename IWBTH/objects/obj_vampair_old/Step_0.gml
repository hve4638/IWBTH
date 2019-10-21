/// @description Fade
fade_set=clamp(fade_set+fade_get,fade_min,fade_max);
with(obj_player) {
    hp_alp=clamp(hp_alp-other.fade_get,other.fade_min,other.fade_max);
}

///Particle
if onblood with(sys_part) {
    if ++prt[43]==0 event_user(0);
    part_emitter_region(Sys[43],emitter[43],other.x+24,other.x-24,other.y+60,other.y-30,1,0);
    part_emitter_burst(Sys[43],emitter[43],particle[43],4);
}

if ondark && I mod 5 == 0 {
    with(sys_part) {
        if ++prt[42]==0 event_user(0);
        part_emitter_region(Sys[42],emitter[42],other.x+24,other.x-24,other.y+60,other.y-60,1,0);
        part_emitter_burst(Sys[42],emitter[42],particle[42],1);
    }
}

if ondarker {
    with(sys_part) {
        if ++prt[46]==0 event_user(0);
        part_emitter_region(Sys[46],emitter[46],other.x+14,other.x-14,other.y+12,other.y-12,1,1);
        part_emitter_burst(Sys[46],emitter[46],particle[46],5);
    }
}

if onfield {
    with(sys_part) {
        if ++prt[15]==0 event_user(0);
        part_system_depth(Sys[15],-17);
        part_type_color1(particle[15],make_colour_rgb(149,0,0));
        part_emitter_region(Sys[15],emitter[15],other.onfield_x1,other.onfield_x2,434,454,1,0);
        part_emitter_burst(Sys[15],emitter[15],particle[15],10);
    }
}

/*if oncurse {
    with(sys_part) {
        if ++prt[45]==0 event_user(0);
        part_emitter_region(Sys[45],emitter[45],Me.x+10,Me.x-10,Me.y-25,Me.y-15,2,1);
        part_emitter_burst(Sys[45],emitter[45],particle[45],10);
    }
}*/

if bg_a {
    with(sys_part) {
        if ++prt[44]==0 event_user(0);
        part_emitter_region(Sys[44],emitter[44],0,800,460,472,1,0);
        part_emitter_burst(Sys[44],emitter[44],particle[44],1);
    }
}

/* */
///Blood
if 0<tp_t {
    if tp_t==1 {ondark=false;}
    else if tp_t==10 {onblood=true;}
    else if 25<tp_t && tp_t<60 {image_alpha-=0.03;}
    else if tp_t==60 {onblood=false; image_alpha=0;}
    else if tp_t==85 {
        x=tp_x;
        onblood=true;
        onxscale=1
    }
    else if 100<tp_t && tp_t<150 {
        if tp_t==125 onblood=0;
        image_alpha+=0.02;
    }
    else if tp_t==150 {
        image_alpha=1;
        alarm[0]=30;
        ondark=true;
        tp_t=-1;
    }
    
    tp_t++;
}

/* */
///Step
if onxscale {
    var xs=sign(x-Me.x);
    if xs==0 xs=1;
    image_xscale=xs;
}

if bg_a __background_set( e__BG.Alpha, 2, __background_get( e__BG.Alpha, 2 ) - (0.02) );

if onabs {Me.adhspd=sign(x-Me.x)*2.6;}

if onabs_p {
    var i=instance_create(x+irandom_range(-150,150),y+irandom_range(-100,100),obj_dust);
    i.target=id;
}

if onfirerain && I mod 2 {
    var i=instance_create(irandom_range(0,800),-32,obj_firerain);
    i.speed=irandom_range(6,12);
    i.direction=270;
    
    //scp_sfx(snd_magic,3);
    timeline_position--;
}
if issnd {audio_play_sound(snd_magic,0,0); issnd=0;}

if onholy && I mod 33 == 0 {
    switch(irandom(3)) {
        case 1: {
            var j=instance_create(x-image_xscale*24,432-32*0,obj_fireball); with(j) {direction=90+other.image_xscale*90; speed=1;}
            var j=instance_create(x-image_xscale*24,432-32*3,obj_fireball); with(j) {direction=90+other.image_xscale*90; speed=1;}
        } break;
        case 2: {
            var j=instance_create(x-image_xscale*24,432-32*0,obj_fireball); with(j) {direction=90+other.image_xscale*90; speed=1;}
            var j=instance_create(x-image_xscale*24,432-32*1,obj_fireball); with(j) {direction=90+other.image_xscale*90; speed=1;}
        } break;
        case 3: {
            var j=instance_create(x-image_xscale*24,432-32*2,obj_fireball); with(j) {direction=90+other.image_xscale*90; speed=1;}
            var j=instance_create(x-image_xscale*24,432-32*1,obj_fireball); with(j) {direction=90+other.image_xscale*90; speed=1;}
        } break;
        case 0: {
            var j=instance_create(x-image_xscale*24,432-32*3,obj_fireball); with(j) {direction=90+other.image_xscale*90; speed=1;}
            var j=instance_create(x-image_xscale*24,432-32*2,obj_fireball); with(j) {direction=90+other.image_xscale*90; speed=1;}
        } break;
    }
    with(obj_fireball) {
        image_index=1; get_alpha=0.1;
        get_speed=0.4; max_speed=16;
        type=-1; On=0; Del=true;
    } audio_play_sound(snd_magic,0,0);
}

with(sys_lighting) if 100<val val--;



I++;

/* */
///Debug
if cheat {
    if keyboard_check_pressed(ord("K")) {
        phase=4;
    }
}

/* */
/*  */
