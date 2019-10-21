MAXHP=120; HP=120; ARMOR=1; 
onhealth=false;
drawhp=0;

inv=false;
phase=0;

xx=x; yy=y;
image_alpha=0;



scp_timeline(tin_boss6begin);

///Summon Parts
EYE=instance_create(x,y,obj_ruingolem_part);
with(EYE) {
    sprite_index=spr_ruingolem_head;
    image_index=1;
    depth=-5;
}

HEAD=instance_create(x,y,obj_ruingolem_part);
with(HEAD) {
    sprite_index=spr_ruingolem_head;
    image_index=0;
    depth=-4;
}

BODY=instance_create(x,y,obj_ruingolem_part);
with(BODY) {
    sprite_index=spr_ruingolem_body;
    image_index=0;
    depth=0;
}


with(obj_ruingolem_part) image_alpha=0;

