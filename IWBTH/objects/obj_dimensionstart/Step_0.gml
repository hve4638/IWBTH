if 1<abs(nview) nview-=nview/25;
else {nview=0; instance_destroy();}

__view_set( e__VW.XPort, 1, 400*(nview/100) );
__view_set( e__VW.YPort, 1, 304*(nview/100) );
__view_set( e__VW.WPort, 1, 800*(1-nview/100) );
__view_set( e__VW.HPort, 1, 608*(1-nview/100) );

