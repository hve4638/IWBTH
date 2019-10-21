if enable {
    if nodown On=true;
    else if place_meeting(x,y-1,Me) {
        if keyboard_check(global.downbutton) On=false;
        else with(Me) if (place_meeting(x, round(y+1), obj_block)) other.On=true;
    } else On=true;
} else On=false;

