scp_towersh();

for(i=(__view_get( e__VW.XView, 0 ) div 32)*32-64;i<__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+64;i+=32)
    for(j=(__view_get( e__VW.YView, 0 ) div 32)*32-64;j<__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+64;j+=32)
    {
        draw_background(background13,i,j);
    }
    
shader_reset();

