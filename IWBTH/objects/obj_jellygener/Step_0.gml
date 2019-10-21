/// @description act
if 3648<Me.y act=true;

if !act exit;
if i mod 100 == 0 || (my-Me.y<250 && Me.y<4672) {
    n=!n;
    my=max(my,__view_get( e__VW.YView, 0 )+608+64);
    var j=irandom_range(0,2);
    if n j=4-j;
    for(i=0;i<5;i++) {
        var t;
        if i==j continue;
        t=instance_create(288+i*56,my,obj_jellyfish);
        with(t) {
            type=3;
            tm=45;
            spd=5;
            direction=90;
            life=1000;
        }
    }
}
i++;

