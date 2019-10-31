if (onground || onPlatform) {
    vspd = -jump;
	
	onground = false;
    scp_sfx(snd_Jump);
} else if djump {
    vspd = -jump2;
  
    djump = false;
    scp_sfx(snd_DJump,5);
}
