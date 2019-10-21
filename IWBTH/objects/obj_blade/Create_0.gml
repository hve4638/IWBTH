movang=32; movspd=0;

maxspd=100;
minspd=-100;

life=500;


T=0;
aftx=ds_list_create();
afty=ds_list_create();
afta=ds_list_create();

for(var i=0;i<6;i++) {
    ds_list_add(aftx,-999);
    ds_list_add(afty,-999);
    ds_list_add(afta,1);
}

image_speed=0;

