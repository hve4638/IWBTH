t_i=0;
repeat(3) scp_sfx(snd_Explode2,3);
scp_shake(14,25,1);


with(t_arr[0]) {direction=180;}
with(t_arr[1]) {direction=180; x-=8;}
with(t_arr[2]) {direction=0;}
with(t_arr[3]) {direction=0; x+=8;}
with(obj_whitechunk) {
    x=400; y=448+16-32;
    speed=0; movang=16;
    maxspd=11.5; movspd=0.2;
    max_x=800;
}

onchunk=true; I=0;
onknife_i=100;

timeline_position=1000;


