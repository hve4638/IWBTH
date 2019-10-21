if 0<damage { audio_play_sound(snd_BossHit,0,0);
    with(other) {instance_destroy();}
    with(obj_golem) {hp-=DEAL*other.damage;}
}

