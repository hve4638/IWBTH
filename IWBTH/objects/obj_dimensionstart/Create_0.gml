__view_set( e__VW.Visible, 1, true );
nview=100;

__view_set( e__VW.XPort, 1, 400*(nview/100) );
__view_set( e__VW.YPort, 1, 304*(nview/100) );
__view_set( e__VW.WPort, 1, 800*(1-nview/100) );
__view_set( e__VW.HPort, 1, 608*(1-nview/100) );

//view_xview[0]=1;
//view_yview[0]=1;
//view_wview[0]=3;
//view_hview[0]=3;

with(obj_player){image_blend=c_black;}

