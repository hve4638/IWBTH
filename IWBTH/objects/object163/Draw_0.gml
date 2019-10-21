with (other) {
draw_self();
if ON!=0 {
 draw_set_colour(c_white);
 draw_set_font(Font0);
 draw_set_halign(fa_center);
 
 if select==0 {
  draw_text(384,416,string_hash_to_newline(es("main","press")));
 } if 1<=select {
  if select==1 {draw_set_alpha(1);} else {draw_set_alpha(0.3);}
  draw_text(384,384,string_hash_to_newline(es("main","play")));
  if select==2 {draw_set_alpha(1);} else {draw_set_alpha(0.3);}
  draw_text(384,384+32,string_hash_to_newline(es("main","option")));
  if select==3 {draw_set_alpha(1);} else {draw_set_alpha(0.3);}
  draw_text(384,384+64,string_hash_to_newline(es("main","exit")));
 } 
 
 if 11<=select && select<=17 {
  if select==11 {draw_set_alpha(1);} else {draw_set_alpha(0.3);}
  draw_text(490,312,string_hash_to_newline(es("main","save")+" 1"));
  if select==12 {draw_set_alpha(1);} else {draw_set_alpha(0.3);}
  draw_text(490,312+32,string_hash_to_newline(es("main","save")+" 2"));
  if select==13 {draw_set_alpha(1);} else {draw_set_alpha(0.3);}
  draw_text(490,312+64,string_hash_to_newline(es("main","save")+" 3"));
  if select==14 {draw_set_alpha(1);} else {draw_set_alpha(0.3);}
  draw_text(490,312+96,string_hash_to_newline(es("main","back")));
 } if 15<=select && select<=17 {
  if select==15 {draw_set_alpha(1);} else {draw_set_alpha(0.3);}
  draw_text(630,320,string_hash_to_newline(es("main","new")));
  if select==16 {draw_set_alpha(1);} else {draw_set_alpha(0.3);}
  draw_text(630,320+32,string_hash_to_newline(es("main","load")));
  if select==17 {draw_set_alpha(1);} else {draw_set_alpha(0.3);}
  draw_text(630,320+64,string_hash_to_newline(es("main","back")));
 }
 
if 21<=select && select<=29 { draw_set_halign(fa_left);
  if select==21 {draw_set_alpha(1);
   if bgmset {draw_text(490-20,312,string_hash_to_newline(es("main","bgm")+" "+es("main","on")));}
   else {draw_text(490-20,312,string_hash_to_newline(es("main","bgm")+" "+es("main","off")));}
  } else {draw_set_alpha(0.3); draw_text(490-20,312,string_hash_to_newline("BGM"));}
  
  if select==22 {draw_set_alpha(1);} else {draw_set_alpha(0.3);}
  if setconfig==0 {draw_text(490-20,312+32,string_hash_to_newline(es("main","config")));}
  else if setconfig==1 {draw_text(490-20,312+32,string_hash_to_newline(es("main","config")+" "+es("config","left")));}
  else if setconfig==2 {draw_text(490-20,312+32,string_hash_to_newline(es("main","config")+" "+es("config","right")));}
  else if setconfig==3 {draw_text(490-20,312+32,string_hash_to_newline(es("main","config")+" "+es("config","down")));}
  else if setconfig==4 {draw_text(490-20,312+32,string_hash_to_newline(es("main","config")+" "+es("config","shoot")));}
  else if setconfig==5 {draw_text(490-20,312+32,string_hash_to_newline(es("main","config")+" "+es("config","jump")));}
  else if setconfig==6 {draw_text(490-20,312+32,string_hash_to_newline(es("main","config")+" "+es("config","restart")));}
  
  if select==23 {draw_set_alpha(1);
   if cheat {draw_text(490-20,312+64,string_hash_to_newline(es("main","debug")+" "+es("main","on")));}
   else {draw_text(490-20,312+64,string_hash_to_newline(es("main","debug")+" "+es("main","off")));}
  } else {draw_set_alpha(0.3); draw_text(490-20,312+64,string_hash_to_newline(es("main","debug")));}
  
  if select==24 {draw_set_alpha(1);} else {draw_set_alpha(0.3);}
  draw_text(490-20,312+96,string_hash_to_newline(es("main","back")));
} if 25<=select && select<=27 {
  if select==25 {draw_set_alpha(1);} else {draw_set_alpha(0.3);}
  draw_text(630,320,string_hash_to_newline(es("main","new")));
  
  if select==26 {draw_set_alpha(1);} else {draw_set_alpha(0.3);}
  draw_text(630,320+32,string_hash_to_newline(es("main","load")));
  
  if select==27 {draw_set_alpha(1);} else {draw_set_alpha(0.3);}
  draw_text(630,320+64,string_hash_to_newline(es("main","back")));
} draw_set_halign(fa_middle);
 
 draw_set_alpha(1);
 draw_set_halign(fa_left);
}

}
