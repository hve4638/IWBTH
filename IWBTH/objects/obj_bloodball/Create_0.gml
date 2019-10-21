image_speed=0;
image_alpha=0;

movspd=0;
minspd=0;
maxspd=100;
movdir=0;
movalp=0.05;
force=false;

life=250;
sleep=0;

T=0;
isaft=1;
aftx=ds_list_create();
afty=ds_list_create();

for(var i=0;i<15;i++) {
    ds_list_add(aftx,-999);
    ds_list_add(afty,-999);
}

