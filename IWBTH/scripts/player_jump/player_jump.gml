if (onground || onPlatform) {
    vspd = -jump;
	
	onground = false;
    sfx(snd_Jump);
} else if djump {
    vspd = -jump2;
  
    djump = false;
    sfx(snd_DJump);
}
