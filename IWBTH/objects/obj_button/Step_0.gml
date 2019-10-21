with (obj_button) {
if 0<t t--; 
else {
    if place_meeting(x,y,obj_player) {
        if !touch {
            SWITCH[0]=!SWITCH[0];
            touch=1;
            t=50;
        }
        touch=1;
    } else touch=0;
}
image_index=SWITCH[0];

}
