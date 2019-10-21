/// @description Collision with platforms
if (y-vspeed/2 <= other.y){
  if(other.vspeed >= 0){
    y = other.y-9;
    vspeed = other.vspeed;
    djump = true;
  }
  onPlatform = 1;
  djump = true;
}

cSpeed=1;
deffect=0;

