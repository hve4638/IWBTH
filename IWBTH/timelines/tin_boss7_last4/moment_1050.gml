if t_i < 15 instance_create(Me.x div 64 * 64+32 + irandom_range(-48,48)*(t_i mod 2),448-32,obj_warning_meteo);
else instance_create(Me.x div 64 * 64+32,448-32,obj_warning_meteo);

if t_i++<18 {
    if t_i==1 {onknife=false;}
    if t_i==17 {
        onchunk = false;
    }
    with(obj_whitechunk) maxspd=min(maxspd+0.2,15);
    timeline_position-=max(floor(75-t_i*3),25);
} else {
    onchunk=false;
    onknife=false;
}

