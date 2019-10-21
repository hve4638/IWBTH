cansave=0;

perbgm=snd_Ending;
scp_play(snd_Ending,0);

dalpha=0;
dmovalp=0;
dx=0; dy=0;
dsprite=noone;
dimage=0;

talpha=0;
tmovalp=0;
tx=0; ty=0;
dtext="";

palpha=0;
isend=0;

onpart=false;

fade_set=0;
fade_get=0;
fade_col=c_black;
shake=0;
sx=0; sy=0;

onmov_player=0;

I=0;

scp_timeline(tin_ending1);
movxvw=0;
movyvw=0;
vwdelay=1;

///Particle
Sys= part_system_create();
particle = part_type_create();
part_type_shape(particle,pt_shape_flare);
part_type_size(particle,0.10,0.10,0.01,0);
part_type_scale(particle,4,4);
part_type_color1(particle,5263440);
part_type_alpha3(particle,0.10,0.01,0);
part_type_speed(particle,0.3,1,0,0);
part_type_direction(particle,45,135,0,0);
part_type_gravity(particle,0,270);
part_type_orientation(particle,0,0,0,0,1);
part_type_blend(particle,0);
part_type_life(particle,30,300);
emitter = part_emitter_create(Sys);

///Result
var s, m, h;
h=string((time div 60) div 60);
m=string((time div 60) mod 60);
s=string(time mod 60);

if string_length(m)==1 m="0"+m;
if string_length(s)==1 s="0"+s;

result_time=h+":"+m+":"+s;
result_death=death;

///save
cantp=true;
scp_save(580,407-32,rmteleport);

///Clear
var f;
var n="clear";
if !file_exists(n) {file_delete(n);}

f=file_text_open_write(n);
    file_text_write_string(f,"congratulation!");
file_text_close(f);

