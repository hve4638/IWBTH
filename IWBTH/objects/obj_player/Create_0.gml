/// @description Set
frozen = false;
jump = 8.5;
jump2 = 7;
jumpw = 8; 
djump = 1;
hp_alp=1;

deffect = 0; //1 : hjump(x), 2 : vjump (y)
cSpeed = 1; //hmore effect

hjump_spd=1;
hjump_break=0;
hjump_dir=0;


inwater=place_meeting(x,y,obj_water);
G=0;

hmore_reb=0;
hmore_time=0;

white=0;
gravity = 0.4; 
adgrav=0;
adhspd=0;
setgrav=-1;

maxSpeed = 3; 
maxVspeed = 9;
maxVspeed2 = 9;
image_speed = 0.4;
onPlatform = 0; 
onBlock = 0; 
xScale = 1; 
del=0; onVine=0;

firstinput=0;

tpon=0;
tpidx=0;
tpalpha=0;

FLIP=0;

if room==rmteleport 
|| room==rmteleport2
    VVV=true;
else VVV=false;

reb_h=0;
reb_v=0;

toc=false;
tox=0; toy=0;

scp_publicsave();

///set2
DANMAKU=false;

INDEX=noone;
INDEX_SPEED=0.2;

///Debug
debug_reb=0;

