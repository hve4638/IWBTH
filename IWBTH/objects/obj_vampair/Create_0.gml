MAXHP=370;
HP=370;
ARMOR=1;
onhealth=true;
drawhp=0;
inv=false;

current_pattern=noone;

phase=0;
scp_pattern_create(3,tin_boss7a,tin_boss7b,tin_boss7c);

image_speed=0;
ds_tmp=-1;

mid_st=false;
ds_mid=ds_list_create();
ds_list_add(ds_mid,tin_boss7_last2,tin_boss7_last4);
ds_list_shuffle(ds_mid);
//1 aqua
//2 reaper
//3 ignis
//4 mage

var a, b;
if choose(0,1)
{
    a = tin_boss7_last1;
    b = tin_boss7_last3;
}
else {
    a = tin_boss7_last3;
    b = tin_boss7_last1;
}
ds_list_insert(ds_mid,0,a);
ds_list_insert(ds_mid,choose(1,2,3),b);



onsnd=noone;
onsnd_delay=10;

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

///Passive
onchunk=false;
onknife=false;
onknife_i=1;

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

