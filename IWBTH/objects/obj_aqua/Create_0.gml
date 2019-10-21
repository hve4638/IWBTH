MAXHP=220;
HP=220;
ARMOR=1;
onhealth=true;
drawhp=0;

image_alpha=0.65;
image_speed=0;

DIR=true;
EFFECT=false;
D=0;
K=0;

bb_dir=0;
bb_dis=0;

inv=false;
phase=0;

scp_pattern_create(5,tin_boss5_new1,tin_boss5_new2,tin_boss5_new3,tin_boss5_new4,tin_boss5_new5);

nx_p=0;
alarm[1]=30;

f_spd=0;
f_dir=0;
f_y=0;

sx=x; sy=y;
xx=x; yy=y;

with(sys_global) {vname=es("boss","aqua"); vtime=100;}



with (other) {
///After
 T=0;
aftx=ds_list_create();
afty=ds_list_create();

for(var i=0;i<5;i++) {
    ds_list_add(aftx,-999);
    ds_list_add(afty,-999);
}

}
