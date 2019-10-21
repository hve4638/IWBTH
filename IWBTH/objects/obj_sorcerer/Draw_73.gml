/// @description Last
/*
var k, rh;
rh=480;
var i, j;
var k=point_direction(x,y,mouse_x,mouse_y)+90;
draw_sprite_ext(spr_ebeam,0,x,y,1,1,k,c_white,1);
draw_set_colour(c_white);
for(i=0;i<room_width;i++) {
    j=0;
    var d=point_direction(x,y,i,j);
    if (bs<=be && bs<=d && d<=be) || (be<bs && (d<=bs || be<=d)) {
        draw_line(i,j,x,y);
    }
    
    j=rh;
    var d=point_direction(x,y,i,j);
    if (bs<=be && bs<=d && d<=be) || (be<bs && (d<=bs || be<=d)) {
        draw_line(i,j,x,y);
    }
}

for(j=0;j<rh;j++) {
    i=0;
    var d=point_direction(x,y,i,j);
    if (bs<=be && bs<=d && d<=be) || (be<bs && (d<=bs || be<=d)) {
        draw_line(i,j,x,y);
    }
    
    i=room_width;
    var d=point_direction(x,y,i,j);
    if (bs<=be && bs<=d && d<=be) || (be<bs && (d<=bs || be<=d)) {
        draw_line(i,j,x,y);
    }
}



/* */
///Health
if onhealth {
    var vx, vy;
    vx=__view_get( e__VW.XView, 0 );
    vy=__view_get( e__VW.YView, 0 );
    
    

    if HP!=drawhp {
        //if abs(drawhp-HP)<0.5 {drawhp=HP;}
        drawhp+=(HP-drawhp)/10;
    }
    if SHIELD!=drawsd {
        //if abs(drawsd-SHIELD)<0.5 {drawsd=SHIELD;}
        drawsd+=(SHIELD-drawsd)/10;
    }
    
    
    _p=739*(drawhp/MAXHP);
    draw_sprite_ext(spr_bar,0,vx+30,vy+32,1,1,0,c_white,1);
    draw_sprite_part_ext(spr_bar,8,0,0,_p,16,vx+30,vy+32,1,1,c_white,1);
    draw_sprite_ext(spr_bar,1,vx+30,vy+32,1,1,0,c_white,1);
    
    var bx, by;
    bx=400-200;
    by=50+4;
    
    _q=400*(drawsd/MAXSHIELD);
    draw_sprite_ext(spr_bar2,1,vx+bx,vy+by,1,1,0,c_white,1);
    draw_sprite_part_ext(spr_bar2,2,0,0,_q,16,vx+bx,vy+by,1,1,c_white,1);
    draw_sprite_ext(spr_bar2,0,vx+bx,vy+by,1,1,0,c_white,1);
}

/* */
/*  */
