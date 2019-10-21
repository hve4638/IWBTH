/// @description set
MAXHP=100;
HP=100;
ARMOR=1;
onhealth=true;
drawhp=0;
hmove = 0;

onslide = false;
onlook = false;

image_speed=0;

inv=false;
phase=0;

surface = surface_create(32,32);
surface1 = surface_create(32,32);
surface2 = surface_create(32,32);
I = 0;

///kid set
image_speed = 0.2;

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

reb_h=0;
reb_v=0;

scp_publicsave();

