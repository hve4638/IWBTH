with(Me) {
    repeat(300) instance_create(x,y,obj_blood);
    instance_destroy();
}
with(obj_rock) speed=0;
scp_sfx(snd_Death,1);

