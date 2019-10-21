/// @description particle
if onpart {
    part_emitter_region(Sys,emitter,0,800,606,610,0,0);
    part_emitter_burst(Sys,emitter,particle,1);
}

dalpha=clamp(dalpha+dmovalp,0,1);
talpha=clamp(talpha+tmovalp,0,1);
if isend {
    palpha=clamp(palpha+0.002,0,1);
    if keyboard_check_pressed(vk_anykey) {
        room_goto(rmaltar);
        instance_destroy();
    }
}
fade_set=clamp(fade_set+fade_get,0,1);


__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (sx) );
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (sy) );
if I mod vwdelay==0 {
    __view_set( e__VW.XView, 0, clamp(__view_get( e__VW.XView, 0 )+movxvw,0,room_width-__view_get( e__VW.WView, 0 )) );
    __view_set( e__VW.YView, 0, clamp(__view_get( e__VW.YView, 0 )+movyvw,0,room_height-__view_get( e__VW.HView, 0 )) );
}

if room==rmending4 {
    __background_set( e__BG.X, 0, __view_get( e__VW.XView, 0 ) );
    __background_set( e__BG.Y, 0, __view_get( e__VW.YView, 0 ) );
}

sx=irandom_range(0,shake);
sy=irandom_range(0,shake);
__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (sx) );
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (sy) );

if room==rmending7 && I mod 10 ==0 {
    instance_create(irandom_range(32,992),0,obj_rock2);
}

with(obj_player) {
    adhspd=other.onmov_player;
}
I++;

