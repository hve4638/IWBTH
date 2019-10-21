MAXHP=120;
HP=120;
ARMOR=1;
onhealth=true;
drawhp=0;

image_speed=0;

DIR=true;
EFFECT=false;
D=0;
K=0;

inv=false;
phase=0;

alarm[0]=60;

sx=x; sy=y;
xx=x; yy=y;


with(sys_global) {vname=es("boss","aqua"); vtime=100;}

///After
 T=0;
aftx=ds_list_create();
afty=ds_list_create();

for(var i=0;i<5;i++) {
    ds_list_add(aftx,-999);
    ds_list_add(afty,-999);
}

