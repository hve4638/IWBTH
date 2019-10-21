globalvar time, death, num;
globalvar cansave, vismask, bgmset, cheat, perbgm, ontp, ongod, onui, uiset, isclear, cantp, showvar, DEAL;
globalvar upbutton, leftbutton, rightbutton, downbutton, shotbutton, jumpbutton, restartbutton, tpbutton;
globalvar wuss, guy;
globalvar kid_hp, kid_mxhp, kid_inv;
globalvar SWITCH;
globalvar boss;
globalvar prever;
T=0; time=0; death=0; num=1; ontp=0; ongod=0; ondeal=0; showvar=0;
cansave=0; vismask=0; bgmset=true;
wuss=false; guy=false;
kid_inv=0; kid_hp=1; kid_mxhp=1;
perver=-1; prever=-1;

towershader=false;
showkey=false;
SWITCH[0] = 0;

reroom=false;
reroom_idx=0;

tpbutton=ord("T");

perbgm=noone; cheat=0; DEAL=1;
tempdeal=1;

light_mouse=false;

isclear=false;

uiset=true;
cantp=false;

vname=""; vtime=0; valpha=0;

i=0; repeat(7) ki[i++]=0;
i=0; repeat(3) orb[i++]=0;
i=0; repeat(10) boss[i++]=0;
randomize();

///Save
tmplist=ds_list_create();
tmpmap=ds_map_create();

pdata[1]="";
pdata[2]="";
pdata[3]="";

ldata[1]="";
ldata[2]="";
ldata[3]="";

cdata="";

scp_configload();

///*Comment
/*

*** Depth ***
Unused: -1000
holysword(except): -15
particle: -15
player: -10
bosses: -10
throwing ball: -5
bullet: -5
block(tile): 0
spike: 5



Tip Font: Bookman Old Style
폰트 맑은고딕 18

/* */
///Load Data
var t, f;
var sec, key, val;
var str, str1, str2;
sec="unknown";

txt=ds_map_create();


t="text.txt";
f=file_text_open_read(t);
while(!file_text_eof(f)) {
    str=file_text_read_string(f);

    if string_copy(str,1,1)=="<" {
        str=string_replace(str,"<","");
        str=string_replace(str,">","");
        sec=str;
    } else if string_copy(str,1,1)=="\"" {        
        var i=string_pos("=",str);
        key=string_copy(str,1,i-1);
        val=string_delete(str,1,i);
        
        i=string_pos("\"",key);
        key=string_delete(key,1,i);
        i=string_pos("\"",key);
        key=string_copy(key,1,i-1);
        
        i=string_pos("\"",val);
        val=string_delete(val,1,i);
        i=string_pos("\"",val);
        val=string_copy(val,1,i-1);
        
               
        txt[? sec+"."+key]=val;
    }
    file_text_readln(f);    
}
file_text_close(f);

/* */
/*  */
