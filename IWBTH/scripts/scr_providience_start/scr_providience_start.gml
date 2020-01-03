onhealth = true;
hp = maxhp;
away_time = 0; 

hspd_move = max(abs(Player.x - x) - 512) * sign(Player.x - x);
state = StateP.walk;

show_intro(64, view_h - 64, spr_intro_providience);
bgm(snd_providience, false);