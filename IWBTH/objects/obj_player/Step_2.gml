if 0<kid_inv hp_alp=1;

if white {
    image_blend=c_white;
switch(sprite_index)
{
    case spr_PlayerIdle:
        sprite_index=spr_PlayerIdle_white;
    break;
    case spr_PlayerRunning:
        sprite_index=spr_PlayerRunning_white;
    break;
    case spr_PlayerJump:
        sprite_index=spr_PlayerJump_white;
    break;
    case spr_PlayerFall:
        sprite_index=spr_PlayerFall_white;
    break;   
}
}

///Lighting
if room!=rmstage05e && room!=rmboss05 && room!=rmending7 && room!=rmsin2 scp_light(x,y,96+48);

///Water
if place_meeting(x,y,obj_water) {
    if !inwater && room!=rmboss05 {
        if (!FLIP && vspeed >= 1.8) || (FLIP && vspeed <= -1.8) {
            with(sys_part) {
                if ++prt[39]==0 event_user(0);
                part_emitter_region(Sys[39],emitter[39],other.x+11,other.x-11,other.y+8,other.y-8,1,1);
                part_emitter_burst(Sys[39],emitter[39],particle[39],6);
            }
        }
    }
    inwater=true;
} else inwater=false;

///Particle
if guy && room!=rmlastboss {
    if G++ mod 5 == 0
    with(sys_part) {
        if ++prt[40]==0 event_user(0);
        
        part_system_depth(Sys[40],other.depth-1);
        part_type_direction(particle[40],60+__view_get( e__VW.Angle, 0 ),120+__view_get( e__VW.Angle, 0 ),0,0);
        part_type_gravity(particle[40],0.12,90+__view_get( e__VW.Angle, 0 ));
        if !other.FLIP part_emitter_region(Sys[40],emitter[40],other.x+13,other.x-13,other.y+5,other.y+7,1,0);
        else part_emitter_region(Sys[40],emitter[40],other.x+13,other.x-13,other.y-5,other.y-7,1,0);
        part_emitter_burst(Sys[40],emitter[40],particle[40],1);
    }
}

///Collision playerKiller
if !DANMAKU {
    if place_meeting(round(x),round(y),playerKiller) scp_kill();
} else {
    if collision_point(x,y,playerKiller,1,0) scp_kill();
}

