/// @description scp_act_step();
speed=clamp(speed+movspd,minspd,maxspd);
image_alpha=clamp(image_alpha+movalp,minalp,maxalp);
direction+=movdir;
image_angle+=movang;
