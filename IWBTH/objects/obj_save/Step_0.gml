if place_meeting(x,y,obj_player) {
    if obj_player.FLIP exit;
    if image_single==0 {
        scp_save(x+16,y+23,room);
        instance_create(Me.x,Me.y-8,obj_savetxt);
        image_single=1; on=0;
    }
}

if image_single==1 {
 if on==0 {if 0.2<image_alpha {image_alpha-=0.02;} else {on=1;}}
 else if on==1 {if image_alpha<1 {image_alpha+=0.02;} else {image_single=0;}}
}

