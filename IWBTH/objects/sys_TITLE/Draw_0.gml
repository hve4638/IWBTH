with (other) {
///Title
draw_self();
draw_set_colour(c_white);
draw_set_font(Font0);
draw_set_halign(fa_center);
    
if ON {
    draw_set_font(Font2);
    draw_set_halign(fa_left);
    draw_text(0,0,string_hash_to_newline(es("title","explanation")));


    draw_set_font(Font0);
    draw_set_halign(fa_center);
    scp_alphaset(0,0); draw_text(384,384,string_hash_to_newline(es("main","play")));
    scp_alphaset(0,1); draw_text(384,384+32,string_hash_to_newline(es("main","option")));
    scp_alphaset(0,2); draw_text(384,384+64,string_hash_to_newline(es("main","exit")));
    
    if setselect>=1 {
        if select[0]==0 {
            draw_set_halign(fa_middle);
            scp_alphaset(1,0); draw_text(490,312,string_hash_to_newline(es("main","save")+" 1"));
            scp_alphaset(1,1); draw_text(490,312+32,string_hash_to_newline(es("main","save")+" 2"));
            scp_alphaset(1,2); draw_text(490,312+64,string_hash_to_newline(es("main","save")+" 3"));
            scp_alphaset(1,3); draw_text(490,312+96,string_hash_to_newline(es("main","back")));
            
            if 0<=select[1] && select[1]<=2 && issave[num] {
                draw_set_alpha(0.3);
                draw_set_halign(fa_middle);
                
                draw_set_font(Font0_nobold);
                draw_text(650,240,string_hash_to_newline(scp_roomname(s_room[num])));
                
                draw_set_font(Font0_12);
                draw_set_halign(fa_left);
                draw_text(580,240+32,string_hash_to_newline("TIME : "+string(s_time[num])));
                draw_text(580,240+32+24,string_hash_to_newline("DEATH : "+string(s_death[num])));
                
                draw_set_font(Font0);
            }
        }
        else if select[0]==1 {
            draw_set_halign(fa_left);
            var str1, str2, str2b;
            str1=es("main","bgm");
            str2=es("main","debug");
            str2b="";
            
            if setselect==1 {
                if select[1]==0 {
                    if bgmset str1+=" "+es("main","on");
                    else str1+=" "+es("main","off");
                }
                else if select[1]==2 {
                    if !isclear str2b="  "+es("main","debuglock");
                    else if cheat str2b=" "+es("main","on");
                    else str2b+=" "+es("main","off");
                }
            }
            
            
            scp_alphaset(1,0); draw_text(490-40,312,string_hash_to_newline(str1));
            scp_alphaset(1,1); draw_text(490-40,312+32,string_hash_to_newline(es("main","config")));
            scp_alphaset(1,2); draw_text(490-40,312+64,string_hash_to_newline(str2)); 
            
            if isclear {draw_set_alpha(1);} else {draw_set_alpha(0.3);}
            draw_text(490-40+string_width(string_hash_to_newline(str2)),312+64,string_hash_to_newline(str2b));
            scp_alphaset(1,3); draw_text(490-40,312+96,string_hash_to_newline(es("main","back")));
        }
    }
    if setselect==2 {
        if select[0]==0 {
            if 0<=select[1] && select[1]<=2 {
                draw_set_halign(fa_left);
                if issave[num] {
                    scp_alphaset(2,0); draw_text(560,320+16,string_hash_to_newline(es("main","load")));
                    scp_alphaset(2,1); draw_text(563,320+32+16,string_hash_to_newline(es("main","setting")));
                    scp_alphaset(2,2); draw_text(563,320+64+16,string_hash_to_newline(es("main","back")));
                }
                else {
                    scp_alphaset(2,0); draw_text(560,320+16,string_hash_to_newline(es("main","new")));
                    scp_alphaset(2,1); draw_text(563,320+32+16,string_hash_to_newline(es("main","back")));
                }
                
            }
        }
        else if select[0]==1 {
            if select[1]==1 {
                draw_set_halign(fa_left);
                scp_alphaset(2,0); draw_text(560,320+32*-2,string_hash_to_newline(es("config","up")));
                scp_alphaset(2,1); draw_text(560,320+32*-1,string_hash_to_newline(es("config","down")));
                scp_alphaset(2,2); draw_text(560,320+32*0,string_hash_to_newline(es("config","left")));
                scp_alphaset(2,3); draw_text(560,320+32*1,string_hash_to_newline(es("config","right")));
                scp_alphaset(2,5); draw_text(560,320+32*3,string_hash_to_newline(es("config","shoot")));
                scp_alphaset(2,4); draw_text(560,320+32*2,string_hash_to_newline(es("config","jump")));
                scp_alphaset(2,6); draw_text(560,320+32*4,string_hash_to_newline(es("config","restart")));
                scp_alphaset(2,7); draw_text(560,320+32*5,string_hash_to_newline(es("main","back")));
                
                
                var tx=670; var ty=0;
                draw_set_font(Font0_nobold);
                if setconfig==0
                switch(select[2]) {
                    case 0: draw_text(tx,320+32*-2,string_hash_to_newline(scp_keyname(upbutton))); break;
                    case 1: draw_text(tx,320+32*-1,string_hash_to_newline(scp_keyname(downbutton))); break;
                    case 2: draw_text(tx,320,string_hash_to_newline(scp_keyname(leftbutton))); break;
                    case 3: draw_text(tx,320+32*1,string_hash_to_newline(scp_keyname(rightbutton))); break;
                    case 4: draw_text(tx,320+32*2,string_hash_to_newline(scp_keyname(jumpbutton))); break;
                    case 5: draw_text(tx,320+32*3,string_hash_to_newline(scp_keyname(shotbutton))); break;
                    case 6: draw_text(tx,320+32*4,string_hash_to_newline(scp_keyname(restartbutton))); break;
                }
                else {
                    switch(select[2]) {
                        case 0: ty=320+32*-2; break;
                        case 1: ty=320+32*-1; break;
                        case 2: ty=320; break;
                        case 3: ty=320+32*1; break;
                        case 4: ty=320+32*2; break;
                        case 5: ty=320+32*3; break;
                        case 6: ty=320+32*4; break;
                    }
                    draw_text(tx,ty,string_hash_to_newline(es("config","none")));
                }
                draw_set_font(Font0);
            }
        }
    }
    if setselect==3 {
        if select[0]==0 {
            if select[2]==1 && issave[num] {
                var str;
                if s_dif[num] str=es("difficult","easy");
                else str=es("difficult","normal");
                draw_set_halign(fa_left);
                scp_alphaset(3,0); draw_text(560,320+16,string_hash_to_newline(es("main","difficult")+": "+str));
                scp_alphaset(3,1); draw_text(563,320+32+16,string_hash_to_newline(es("main","reset")));
                scp_alphaset(3,2); draw_text(563,320+64+16,string_hash_to_newline(es("main","back")));
            }
            else if select[2]==0 && !issave[num] {
                var str;
                if wuss str=es("difficult","easy");
                else str=es("difficult","normal");
                draw_set_halign(fa_left);
                scp_alphaset(3,0); draw_text(563,320+16,string_hash_to_newline(es("main","start")));
                scp_alphaset(3,1); draw_text(562,320+32+16,string_hash_to_newline(es("main","difficult")+": "+str));
                scp_alphaset(3,2); draw_text(563,320+64+16,string_hash_to_newline(es("main","back")));
            }
        }
    }
}
else {
    draw_set_font(Font2);
    draw_set_halign(fa_left);
    draw_text(0,0,string_hash_to_newline(es("title","version")));
    
    draw_set_font(Font0);
    draw_set_halign(fa_center);
    draw_text(384,416,string_hash_to_newline(es("main","press")));
}


draw_set_alpha(1);
draw_set_halign(fa_left);

}
