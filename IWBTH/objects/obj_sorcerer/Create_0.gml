MAXHP=400; HP=400;
MAXSHIELD=500; SHIELD=500;
ARMOR=1;
onhealth=true;
drawhp=0; drawsd=SHIELD;
onshield=true;

image_speed=0;

inv=false;
phase=0;

D=0; S=1;
follow=0;
xx=x;
start=1;

hit=0;
nx_shd=false;
shd=noone;

nx_p=noone;
pv_p=noone;

ds=0;
dsx=0; dsy=0;

t=-1; //ds tmp;

B=1;

scp_pattern_create(3,tin_boss6a,tin_boss6b,tin_boss6c);

T=0; A=1;
aftx=ds_list_create();
afty=ds_list_create();
afta=ds_list_create();

ondie=0;

for(var i=0;i<10;i++) {
    ds_list_add(aftx,-999);
    ds_list_add(afty,-999);
    ds_list_add(afta,1);
}

circle_index=0;
circle_time=0;
circle_angle=0;
circle_alpha=0;

pp=-1;

beam=1;
be=0; bs=0;

with(sys_global) {vname=es("boss","mage"); vtime=100;}
alarm[1]=30;

