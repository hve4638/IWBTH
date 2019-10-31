/// @description Collision with platforms
if other.On {
    if !FLIP {
        if (y-vspeed/2 <= other.y){
          if(other.vspeed >= 0){
            y = other.y-9;
            vspeed = other.vspeed;
            djump = true;
          }
          onPlatform = 1;
          djump = true;
        }
    }
}