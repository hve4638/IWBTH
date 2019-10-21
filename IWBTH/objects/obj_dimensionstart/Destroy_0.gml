__view_set( e__VW.Visible, 1, false );
__view_set( e__VW.XPort, 0, 0 ); __view_set( e__VW.YPort, 0, 0 );
__view_set( e__VW.WPort, 0, 800 ); __view_set( e__VW.HPort, 0, 608 );

__view_set( e__VW.XView, 0, 0 ); __view_set( e__VW.YView, 0, 0 );
__view_set( e__VW.WView, 0, 800 ); __view_set( e__VW.HView, 0, 608 );

with(obj_dimension) event_user(1);
var i=instance_create(0,0,sys_cam);
with(i) {
    target=obj_fakeplayer;
    type=3;
    tx=0; ty=0;
    mx=800; my=608;
}

