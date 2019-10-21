/// @description scp_convert_0_86();
with(sys_global) {
    for(num=1;num<=3;num++) {
        var i, j;
        var tx, ty, troom, tflip;
        
        ds_list_clear(tmplist);
        ds_list_read(tmplist,ldata[num]);
        
        i=0;
        tx=ds_list_find_value(tmplist,i++);
        ty=ds_list_find_value(tmplist,i++);
        troom=ds_list_find_value(tmplist,i++);
        tflip=ds_list_find_value(tmplist,i++);
        wuss=ds_list_find_value(tmplist,i++);
        guy=ds_list_find_value(tmplist,i++);
        
        j=0; repeat(7) {ki[j++]=ds_list_find_value(tmplist,i++);}
        j=0; repeat(3) {orb[j++]=ds_list_find_value(tmplist,i++);}
        j=0; repeat(10) {boss[j++]=ds_list_find_value(tmplist,i++);}
        cantp=ds_list_find_value(tmplist,i++);
        
        switch(troom) {
            case rmstage01a: //Stage 1
            case rmstage01b:
            case rmstage01c:
            case rmboss1:
                troom=rmstage01a;
                tx=65; ty=468;
            break;
            
            case rmboss1b: //Boss 1
                troom=rmboss1b;
                tx=260; ty=347;
            break;
            
            case rmstage02a: //Stage 2
            case rmstage02b:
                troom=rmstage02a;
                tx=41; ty=461;
            break;
            
            case rmboss02: //Boss 2
                troom=rmboss02;
                tx=164; ty=388;
            break;
            
            case rmstage03a: //Stage 3
            case rmstage03b:
            case rmstage03c:
                troom=rmstage03a;
                tx=229; ty=445;
            break;
            
            case rmstage03d: //Boss 3
                troom=rmstage03d;
                tx=276; ty=434;
            break;
            
            case rmstage04a: //Stage 4
                troom=rmstage04a;
                tx=192; ty=1696;
            break;
            
            case rmstage04d: //Boss 4
                troom=rmstage04d;
                tx=16; ty=471;
            break;
                
            
            case rmstage05a: //Stage 5
            case rmstage05b:
            case rmstage05c:
            case rmstage05d:
                troom=rmstage05a;
                tx=32; ty=1056;
            break;
            
            case rmboss05: //Boss 5
                troom=rmboss05;
                tx=219; ty=439;
            break;
            
            default:
                troom=rmteleport;
                tx=658; ty=406;
            break;
        }
        scp_save(tx,ty,troom);
    }
    num=1;
}

perver=0.87;
return 0;
