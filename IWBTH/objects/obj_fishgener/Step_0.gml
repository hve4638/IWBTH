if t mod 200 == 0 {
    repeat(4) {
        if choose(1,0) ds_list_add(ds,1,0);
        else ds_list_add(ds,0,1);
    }
    ds_list_add(ds,1);
    /*
    ds_list_clear(ds);
    ds_list_clear(tds); ds_list_add(tds,1,1,1,0,0); ds_list_shuffle(tds);
    i=0; repeat(ds_list_size(tds)) ds_list_add(ds,ds_list_find_value(tds,i++));
    
    ds_list_clear(tds); ds_list_add(tds,1,1,0,0); ds_list_shuffle(tds);
    i=0; repeat(ds_list_size(tds)) ds_list_add(ds,ds_list_find_value(tds,i++));*/
    scp_shake(1,50,0);
}
else if 0<t mod 200 && t mod 200<=50 {
    i=0; repeat(ds_list_size(ds)) {
        if ds_list_find_value(ds,i) with(sys_part) {
            if ++prt[22]==0 event_user(0);
            part_emitter_region(Sys[22],emitter[22],3424+other.i*128,3424+(other.i+1)*128,608,616,1,0);
            part_emitter_burst(Sys[22],emitter[22],particle[22],20);
        }
        i++;
    }
}
else if 51<=t mod 200 && t mod 200<=100 {
    i=0;
    repeat(ds_list_size(ds)) {
        var k=ds_list_find_value(ds,i);
        if k {
            repeat((50-((t mod 200)-51)) div 4) {
                var j, tx, ty;
                tx=3424+i*128+irandom_range(0,128);
                ty=608+irandom_range(-24,24);
                j=instance_create(tx,ty,obj_danmaku);
                j.sprite_index=spr_jellyfish;
                j.image_speed=0;
                j.direction=90;
                j.speed=32;
                j.life=50;
            }
        }
        i++;
    }
    scp_shake(16,3,0);
}

t++;

/* */
/*  */
