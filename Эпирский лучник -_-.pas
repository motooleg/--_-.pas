uses ABCObjects, Events, Timers,graphabc;
type af1 = record
name:string;
schet12:integer;
end;

var  archer,fon,b1,nachalo,n15:PictureABC;
n1,n2,n,nkam,n3,n5:array [1..100] of pictureabc ;
n1_t,n2_t,n_f,n_t,n3_t,n5_t:array [1..100] of byte ;
menu1,z,gmpicture,nboss,g1,g2,g3,g4,g5,g6,g7,g8:pictureabc;
t,i,ch,ch1,ff, j,j1,bred,a1,kor,kam,t1,t2,k,gm,lvl,schet,lives,c1,speed: integer;
l1:MULTIpictureABC;
f:file of af1;
stroka:string;  f1:text;
b:array[1..151] of af1;
a:af1;


ng,ob,ob1,ob2,gameover,p555,p,p1,p2,b11,b22,recordi1,recordi2,recordi3,recordi4,recordi5,recordi6,recordi7,recordi8,recordi9,recordi10:rectangleabc;
recordochki1,recordochki2,recordochki3,recordochki4,recordochki5,recordochki6,recordochki7,recordochki8,recordochki9,recordochki10,close1,close2:rectangleabc;
aa,ab,ac,ad,ae,af,ag,aj1,ah,ai,a2,ak,al,am,an,ao,ap,aq,ar,as1,at,au,av,aw,ax,ay,az,pauza,astrelka,avivod,fon2,pictureochki,aproblem,adelete,apredstavtes,picturename:pictureabc;
procedure  menu; forward;



procedure level1;

procedure  strela; forward;

procedure vragi1; forward;
procedure vragi2; forward;

procedure vragi4; forward;
procedure vragi1lvl2; forward;
procedure vragi1lvl3; forward;
procedure vragi1lvl4; forward;
procedure vragi1lvl5; forward;
procedure vragi1lvl6; forward;
procedure vragi1lvl7; forward;
procedure vragi1lvl8; forward;
procedure vragi1lvl9; forward;
procedure vragi1lvl10; forward;
 procedure recordi;   forward;

  { s vragi 6 ewe}




procedure keydown(key:integer); {polet streli}
begin
 case key of
 VK_LEFT: archer.moveto(archer.left-5,archer.top);
 VK_RIGHT: archer.moveto(archer.left+5,archer.top);
  81:  begin speed:=speed+1;writeln(speed);end; {q}
  87:  begin speed:=speed-1;writeln(speed);end; {//w}
  69:  begin stoptimer(t); stoptimer(t1);  pauza.visible:=true;    p.visible:=false; p1.visible:=false;p2.visible:=false;
  for i:= 1 to 5 do begin
 if n_t[i]<>0 then    n[i].visible:=false;
  if n1_t[i]<>0 then   n1[i].visible:=false;
  if n2_t[i]<>0 then   n2[i].visible:=false;

    end; end;
  82: begin pauza.visible:=false;    starttimer(t); starttimer(t1); p.visible:=true; p1.visible:=true;p2.visible:=true;  {r}
      for i:= 1 to 5 do begin
 if n_t[i]<>0 then    n[i].visible:=true;
  if n1_t[i]<>0 then   n1[i].visible:=true;
  if n2_t[i]<>0 then   n2[i].visible:=true;
 end;                   end;


 end;
if key = VK_SPACE then  strela;
if key = VK_UP then  StartTimer(t);
if key = VK_UP then  StartTimer(t1);
if key = vk_up then   nachalo.visible:=false;

 ////////////////////////////////


  end;
 
 ///////////////////////////////
procedure vragi1;
 begin
 for i:=1 to 5 do begin
 ch:=ch+10;
 n1[i]:=pictureabc.Create(ch,ch,'objects/vrag3.1.gif');
 n1_t[i]:= random(speed)+1;  end;
 end;
 
 procedure vragi1lvl2;
 begin
 for i:=1 to 5 do begin
 ch:=ch+10;
 n1[i]:=pictureabc.Create(ch,ch,'objects/Stalfos1.gif');
 n1_t[i]:= random(speed)+1;  end;
 end;
 
 
 procedure vragi1lvl3;
 begin
 for i:=1 to 5 do begin
 ch:=ch+10;
 n1[i]:=pictureabc.Create(ch,ch,'objects/DarknutMC1.gif');
 n1_t[i]:= random(speed+4)+1;  end;
 end;
 

 procedure vragi1lvl4;
 begin
 for i:=1 to 5 do begin
 ch:=ch+10;
 n1[i]:=pictureabc.Create(ch,ch,'objects/qop1.1.bmp');
 n1_t[i]:= random(speed+4)+1;  end;
 end;


 procedure vragi1lvl5;
 begin
 for i:=1 to 5 do begin
 ch:=ch+10;
 n2[i]:=pictureabc.Create(ch,ch,'objects/ZeldaGuard2.1.gif');
 n2_t[i]:= random(speed+4)+1;  end;
 end;
 

 procedure vragi1lvl6;
 begin
 ch:=200;
 for i:=1 to 5 do begin
   ch:=ch+10;
 n2[i]:=pictureabc.Create(ch,50,'objects/Monster_claus1.gif');
 n2_t[i]:= random(speed+2)+1;  end;
 end;
 
  procedure vragi1lvl7;
 begin
 ch:=220;
 for i:=1 to 5 do begin
   ch:=ch+20;
 n2[i]:=pictureabc.Create(ch,50,'objects/ZeldaGuard3.1.gif');
 n2_t[i]:= random(speed+2)+1;  end;
 end;
 
  procedure vragi1lvl8;
 begin
 ch:=120;
 for i:=1 to 5 do begin
   ch:=ch+20;
 n2[i]:=pictureabc.Create(ch,50,'objects/vrag8.gif');
 n2_t[i]:= random(7)+1;  end;
 end;
 
  procedure vragi1lvl9;
 begin
 ch:=220;
 for i:=1 to 5 do begin
   ch:=ch+20;
 n2[i]:=pictureabc.Create(ch,50,'objects/vrag9.gif');
 n2_t[i]:= random(speed+2)+1;  end;
 end;
 
  procedure vragi1lvl10;
 begin
 ch:=200;
 for i:=1 to 5 do begin
   ch:=ch+20;
 n2[i]:=pictureabc.Create(ch,50,'objects/vrag10.gif');
 n2_t[i]:= random(speed+2)+1;  end;
 end;

 
procedure vragi4;
  begin

  Stoptimer(t);stoptimer(t1);
  ch:=100;
  for i:=1 to 5 do begin
  ch:=ch+10;
  n1[i]:=pictureabc.Create(ch,25,'objects/vrag3.1.gif');
  n1_t[i]:= random(speed+2)+1;
  end;
  
  for i:=1 to 5 do begin
  ch:=ch+10;
  n2[i]:=pictureabc.Create(ch+10,50,'objects/Stalfos1.gif');
  n2_t[i]:= random(speed+1)+1;
  end;



 end;


PRocedure gameover1;
 var ii:byte;
begin


for ii:=1 to 5 do begin
if n1_t[ii]<>0 then if  n1[ii].top>=windowheight  then begin lives:=lives-1; n1[ii].destroy; n1_t[ii]:=0;end;
if n2_t[ii]<>0 then if  n2[ii].top>=windowheight  then begin lives:=lives-1; n2[ii].destroy; n2_t[ii]:=0;end;

                 end;

if lives=0 then begin fon.visible:=false;p1.visible:=false;
                                                       p1 .visible:=false;
                                                       p.visible:=false;
                                                       fon.visible:=false;
                                                       p2.visible:=false;
                                                      recordi;
if  lives=0 then begin
for I:=1 to 5 do begin
n1[i].moveon(500,500);
n2[i].moveon(500,500);
end;end;



stoptimer(t);  stoptimer(t1);
end;end;

procedure recordi;
begin
onkeydown:=nil;
stoptimer(t);stoptimer(t1);
archer.destroy;
fon2.visible:=true; g1.visible:=false;
for i:=1 to 5 do begin
if n_t[i]<>0 then n[i].visible:=false;
n1[i].visible:=false;
n2[i].visible:=false;
end;
 close2:=rectangleabc.Create(200,330,250,50);
 close2.text:='Выход';
apredstavtes:=PictureABC.Create(0,0,'objects\predtavtes.gif');
aA:=PictureABC.Create(10,80,'Alfavit\a.gif');
aB:=PictureABC.Create(50,80,'Alfavit\b.gif');
ac:=PictureABC.Create(90,80,'Alfavit\c.gif');
ad:=PictureABC.Create(130,80,'Alfavit\d.gif');
ae:=PictureABC.Create(170,80,'Alfavit\e.gif');
af:=PictureABC.Create(210,80,'Alfavit\f.gif');
ag:=PictureABC.Create(250,80,'Alfavit\g.gif');
ah:=PictureABC.Create(290,80,'Alfavit\h.gif');
ai:=PictureABC.Create(320,80,'Alfavit\i.gif');
aj1:=PictureABC.Create(360,80,'Alfavit\j.gif');
ak:=PictureABC.Create(400,80,'Alfavit\k.gif');
al:=PictureABC.Create(440,80,'Alfavit\l.gif');
am:=PictureABC.Create(480,80,'Alfavit\m.gif');
an:=PictureABC.Create(520,80,'Alfavit\n.gif');
adelete:=PictureABC.Create(560,80,'Alfavit\delete.gif');
ao:=PictureABC.Create(10,150,'Alfavit\o.gif');
ap:=PictureABC.Create(50,150,'Alfavit\p.gif');
aq:=PictureABC.Create(90,150,'Alfavit\q.gif');
ar:=PictureABC.Create(120,150,'Alfavit\r.gif');
as1:=PictureABC.Create(160,150,'Alfavit\s.gif');
at:=PictureABC.Create(200,150,'Alfavit\t.gif');
au :=PictureABC.Create(240,150,'Alfavit\u.gif');
av :=PictureABC.Create(280,150,'Alfavit\v.gif');
aw :=PictureABC.Create(320,150,'Alfavit\w.gif');
ax :=PictureABC.Create(360,150,'Alfavit\x.gif');
ay :=PictureABC.Create(400,150,'Alfavit\y.gif');
p555.visible:=true;
 ////////////////////////////////////////////////////
 picturename:=PictureABC.Create(600,150,'alfavit/imya.gif');
 recordi1:=rectangleabc.Create(600,200,100,30);
recordi2:=rectangleabc.Create(600,230,100,30);
recordi3:=rectangleabc.Create(600,260,100,30);
recordi4:=rectangleabc.Create(600,290,100,30);
recordi5:=rectangleabc.Create(600,320,100,30);
recordi6:=rectangleabc.Create(600,350,100,30);
recordi7:=rectangleabc.Create(600,380,100,30);
recordi8:=rectangleabc.Create(600,410,100,30);
recordi9:=rectangleabc.Create(600,440,100,30);
recordi10:=rectangleabc.Create(600,470,100,30);
//////////////////////////////////////////////////
pictureochki:=PictureABC.Create(700,150,'alfavit/oschki.gif');
recordochki1:=rectangleabc.create(700,200,100,30);
recordochki2:=rectangleabc.create(700,230,100,30);
recordochki3:=rectangleabc.create(700,260,100,30);
recordochki4:=rectangleabc.create(700,290,100,30);
recordochki5:=rectangleabc.create(700,320,100,30);
recordochki6:=rectangleabc.create(700,350,100,30);
recordochki7:=rectangleabc.create(700,380,100,30);
recordochki8:=rectangleabc.create(700,410,100,30);
recordochki9:=rectangleabc.create(700,440,100,30);
recordochki10:=rectangleabc.create(700,470,100,30);

///////////////////////////////////////////////
az:=PictureABC.Create(440,150,'Alfavit\z.gif');
 astrelka :=PictureABC.Create(480,150,'Objects\strelka.gif');
 avivod:=PictureABC.Create(520,150,'alfavit\vvod.gif');
   aproblem:=PictureABC.Create(560,150,'alfavit\probel.gif');


  

end;//end;


procedure vragi2;
  begin
  ch:=50;
  for i:=1 to 5 do begin
  ch:=ch+30;
  n2[i]:=pictureabc.Create(ch,50,'objects/Vfartip1.gif');
  n2_t[i]:= random(2)+1;  end;  end;
 

procedure TimerP;
   begin
   for i:=1 to 5 do begin
   a1:=random(4)+1;
   if a1=1 then n2[i].moveon(1,1);
   if a1=2 then n2[i].moveon(1,0) else
   n2[i].moveon(0,1);


 end; end;
 
 procedure TimerP2;
   begin
 if archer.left<0 then archer.left:=archer.left+10;
if archer.left>1320 then archer.left:=archer.left-10 ;



 end;
procedure perexod;
 begin

 k:=0;
 for i:=1 to 5 do begin
 if n1_t[i]<>0 then k:=1;
 if n2_T[i]<>0 then k:=1;
                            end;
if k=0 then begin lvl:=lvl+1;
            if lvl=2 then begin vragi1lvl2;exit;  end;
            if lvl=3 then begin vragi1lvl3;exit; end;
            if lvl=4 then begin vragi1lvl4;exit;  end;
            if lvl=5 then begin vragi1lvl5;exit; end;
            if lvl=6 then begin vragi1lvl6;exit;  end;
            if lvl=7 then begin vragi1lvl7;exit; end;
            if lvl=8 then begin vragi1lvl8;exit;  end;
            if lvl=9 then begin vragi1lvl9;exit;  end;
            if lvl=10 then begin vragi1lvl10;exit; end;
            if lvl=11 then begin stoptimer(t);stoptimer(t1); g1.visible:=false;
                                                       p1 .visible:=false;
                                                       p.visible:=false;
                                                       fon.visible:=false;
                                                       p2.visible:=false;
                                                       recordi;
            end; end;


 end;
 
 procedure viviodrecordov;
 begin
   reset(f);

     while not EOF(f) do begin
     read(f,a);

     /////////////////////////////////
     recordi1.text:=b[1].name;
     recordi2.text:=b[2].name;
     recordi3.text:=b[3].name;
     recordi4.text:=b[4].name;
     recordi5.text:=b[5].name;
     recordi6.text:=b[6].name;
     recordi7.text:=b[7].name;
     recordi8.text:=b[8].name;
     recordi9.text:=b[9].name;
     recordi10.text:=b[10].name;
 ////////////////////////////////////////
 //////////////////////////////////////
 //////////////////////////////////////
 ///////////////////////////////////////
 recordochki1.text:=inttostr(b[1].schet12);
 recordochki2.text:=inttostr(b[2].schet12);
 recordochki3.text:=inttostr(b[3].schet12);
 recordochki4.text:=inttostr(b[4].schet12);
 recordochki5.text:=inttostr(b[5].schet12);
 recordochki6.text:=inttostr(b[6].schet12);
 recordochki7.text:=inttostr(b[7].schet12);
 recordochki8.text:=inttostr(b[8].schet12);
 recordochki9.text:=inttostr(b[9].schet12);
 recordochki10.text:=inttostr(b[10].schet12);
///////////////////////////////////////////////////
//////////////////////////////////////////////////
/////////////////////////////////////////////////
//////////////////////////////////////////////////
            end;
     close(f);
            end;
    


 
 procedure sozdanie;
 begin

reset(f); i:=1;
while not Eof(f) do begin
read(f,b[i]);
i:=i+1;
     end;

b[11].name:=stroka;
b[11].schet12:=schet;


     for i:=1 to 11 do
     for j:=1 to 10 do
        if b[j+1].schet12>b[j].schet12 then begin  a:=b[j+1]; b[j+1]:=b[j]; b[j]:=a; end;

     close(f);

     rewrite(f);
     for i:=1 to 10 do
     write(f,b[i]);
p555.text:=b[i].name;



     close(f);
 end;
 
 procedure MdM1(x,y,mb:integer);
begin

If  aa.PtInside(x,y)=true then begin stroka:=stroka+'a'; {writeln(stroka);} end;
If  ab.PtInside(x,y)=true then begin stroka:=stroka+'b';  end;
If  ac.PtInside(x,y)=true then begin stroka:=stroka+'c';  end;
If  ad.PtInside(x,y)=true then begin stroka:=stroka+'d';  end;
If  ae.PtInside(x,y)=true then begin stroka:=stroka+'e';  end;
If  af.PtInside(x,y)=true then begin stroka:=stroka+'f';  end;
If  ag.PtInside(x,y)=true then begin stroka:=stroka+'g';  end;
If  ah.PtInside(x,y)=true then begin stroka:=stroka+'h';  end;
If  ai.PtInside(x,y)=true then begin stroka:=stroka+'i';  end;
If aj1.PtInside(x,y)=true then begin stroka:=stroka+'j';  end;
If  ak.PtInside(x,y)=true then begin stroka:=stroka+'k';  end;
If  al.PtInside(x,y)=true then begin stroka:=stroka+'l';  end;
If  am.PtInside(x,y)=true then begin stroka:=stroka+'m';  end;
If  an.PtInside(x,y)=true then begin stroka:=stroka+'n';  end;
If  ao.PtInside(x,y)=true then begin stroka:=stroka+'o';  end;
If  ap.PtInside(x,y)=true then begin stroka:=stroka+'p';  end;
If  aq.PtInside(x,y)=true then begin stroka:=stroka+'q';  end;
If  ar.PtInside(x,y)=true then begin stroka:=stroka+'r';  end;
If as1.PtInside(x,y)=true then begin stroka:=stroka+'s';  end;
If  at.PtInside(x,y)=true then begin stroka:=stroka+'t';  end;
If  au.PtInside(x,y)=true then begin stroka:=stroka+'u';  end;
If  av.PtInside(x,y)=true then begin stroka:=stroka+'v';  end;
If  aw.PtInside(x,y)=true then begin stroka:=stroka+'w';  end;
If  ax.PtInside(x,y)=true then begin stroka:=stroka+'x';  end;
If  ay.PtInside(x,y)=true then begin stroka:=stroka+'y';  end;
if aproblem.ptinside(x,y)=true then begin stroka:=stroka+'_'; end;
If  az.PtInside(x,y)=true then begin stroka:=stroka+'z';  end;                 p555.text:=stroka;
if avivod.PtInside(X,y)=true then begin       sozdanie;  viviodrecordov;    end;
if adelete.ptinside(X,y)=true then begin delete(stroka,Length(stroka),length(stroka));   end;
////////////////
/////////////////
  if  close2.PTInside(x,y)=true then  closewindow;
 if  astrelka.PTInside(x,y)=true then  begin
 reset(f);
 I:=1;
 while not eof(f) do begin
 read(f,b[i]);
 end;
 write(f,b[i]);
 close(f);
end;
end;

  procedure strela;
 begin
 i:=0;   ff:=0;
 while ff = 0 do begin
   i:=i+1;
   if n_f[i] = 0 then begin n[i]:= PictureABC.Create(archer.left,archer.top,'objects/strela.Bmp'); n_f[i]:=1; ff:=1; {writeln(1); }end;
 end;
  end;
  
procedure TimerProc;
begin
 for i:=1 to 10 do
 if n1_t[i]<>0 then n1[i].moveon(0,n1_t[i]);
 ///////////////////////////////////////////////////
 for i:=1 to 10 do
 if n2_t[i]<>0 then n2[i].moveon(0,n2_t[i]);
{////////////////////////////////////////////////////}
 for i:=1 to 10 do begin
 for j:=1 to 30 do begin
 if (n1_t[i]<>0)and(n_f[j]<>0) then if n[j].intersect(n1[i]) then begin n1[i].destroy; schet:=schet+1;n1_t[i]:=0; end;
 end;
 end;
 for i:=1 to 5 do begin
 for j:=1 to 30 do begin
 if (n2_t[i]<>0)and(n_f[j]<>0) then if n[j].intersect(n2[i]) then begin n2[i].destroy; schet:=schet+1;n2_t[i]:=0; end;

p.text:='Очки: '+inttostr(schet);
if lives<0 then p1.text:='Вы проиграли '   else p1.text:='Жизни: '+inttostr(lives);
p2.text:='Уровень'+inttostr(lvl);



   gameover1;
end;

  end;

 

for i:= 1 to 30 do

 if n_f[i] <> 0 then begin

   n[i].moveon(0,-13);
   if n[i].top< 10  then  begin n[i].destroy; n_f[i]:=0; end;

 end;
 perexod;

 end;




begin
SetWindowSize(1024,768);
SetWindowTop(5);
SetWindowleft(2);



t:=CreateTimer(20,TimerProc); StopTimer(t);
t1:=CreateTimer(20,TimerP); StopTimer(t1);
t2:=CreateTimer(20,TimerP2);
fon:=pictureabc.create(0,0,'objects/fon2.jpg');
fon2:=pictureabc.create(0,0,'objects/fon2.jpg');
fon2.visible:=false;
nachalo:=pictureabc.create(500,200,'objects/nachalo.png');
archer:= PictureABC.Create(560,650,'objects/1.Bmp');
g1:=PictureABC.Create(820,0,'objects/1lives.png');
pauza:=PictureABC.Create(0,0,'objects/pauza1.bmp');
pauza.visible:=false;
p1:=rectangleabc.Create(740,0,70,50,clgreen);

p:=rectangleabc.Create(950,0,70,50);
p555:=rectangleabc.Create(200,200,70,50);
p555.text:=stroka;
p555.visible:=false;

lives:=3;
p2:=rectangleabc.Create(640,0,70,50,clgreen);

vragi1;
vragi2;

OnMouseDown:=MdM1;
onKeyDown:= keydown;

 end;

 





 procedure  menu; forward;
 

 procedure  menu; forward;

  procedure MdM(x,y,mb:integer);
begin
If Ng.PtInside(x,y)=true then begin level1;
Menu1.visible:=false;
Ng.destroy; end;
if close1.PtInside(x,y)=true then closewindow;
end;

procedure menu;
begin Ng:=rectangleabc.Create(220,230,250,50);
        close1:=rectangleabc.Create(200,330,250,50);
Menu1:=PictureABC.Create(0,0,'objects/Menu.bmp');

OnMouseDown:=MdM;
end;

begin

assign(F,'recordi.txt');
 menu;
end.












