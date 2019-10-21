switch(t_i mod 4) {
    case 0:
        var j=instance_create(Me.x div 32 * 32,0,obj_fadegener);
        j.vspeed=32;
    break;
    case 1:
        var j=instance_create(0,Me.y div 32 *32,obj_fadegener);
        j.hspeed=32;
    break;
    case 2:
        var j=instance_create(Me.x div 32 * 32,608,obj_fadegener);
        j.vspeed=-32;
    break;
    case 3:
        var j=instance_create(800,Me.y div 32 *32,obj_fadegener);
        j.hspeed=-32;
    break;
}

if t_i++<6 {
    timeline_position-=25;
} else t_i=0;

