MAXHP=360;
HP=360;
ARMOR=1;
onhealth=true;
drawhp=0;

image_speed=0;

inv=false;
phase=0;

D=0; S=1;
follow=0;
xx=x;
start=1;

hit=0;
shd=noone;

ds=0;
dsx=0; dsy=0;

t=-1; //ds tmp;

B=1;

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

