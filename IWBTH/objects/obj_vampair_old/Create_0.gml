MAXHP=450;
HP=450;
ARMOR=1;
onhealth=true;
drawhp=0;
inv=false;

phase=0;

image_speed=0;
ds_tmp=-1;
ds_mid=ds_list_create();
ds_list_add(ds_mid,tin_boss7h,tin_boss7i,tin_boss7j,tin_boss7k);
ds_list_shuffle(ds_mid);

front=0;
fade_set=0; fade_get=0;
fade_min=0; fade_max=1; fade_col=0;

nx_p=noone;

tp_t=0;
tp_x=x;

onxscale=0;

issnd=0;


K=0;

onfirerain=0;

bg_a=1;

onfield=0;
onfield_x1=0;
onfield_x2=0;

onblood=0;
ondarker=0;
oncurse=0;
ondark=0;

onabs=0;
onabs_p=0;

onholy=0;



I=0;

///Begin
if perbgm!=snd_Boss5 && audio_is_playing(perbgm) audio_stop_sound(perbgm);
perbgm=snd_Boss5;
if bgmset = true {
    if audio_is_playing(perbgm) audio_stop_sound(perbgm);
    audio_play_sound(perbgm,0,1);
    audio_sound_gain(perbgm, 1, 0);
}


with(sys_global) {vname=es("boss","vampire"); vtime=100;}
alarm[1]=50;

///Debug
str="";

