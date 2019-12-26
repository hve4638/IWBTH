if (onground || onPlatform) {
    vspd = -jump;
	
	onground = false;
    sfx(snd_jump);
} else if djump {
    vspd = -jump2;
  
    djump = false;
    sfx(snd_jump2);
}
