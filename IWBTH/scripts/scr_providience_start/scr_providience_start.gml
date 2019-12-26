onhealth = true;
show_intro(64, win_h - 64, spr_intro_providience);
away_time = 0; 

hspd_move = max(abs(Player.x - x) - 512) * sign(Player.x - x);
state = StateP.walk;