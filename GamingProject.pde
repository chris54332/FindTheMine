import processing.sound.*;
SoundFile file;
Block[] blocks=new Block[100];
Tank tank = new Tank();
Ammo ammo= new Ammo();
SpecialAmmo specialAmmo= new SpecialAmmo();
float tankPos=225;
boolean AmmoOn;
boolean SpecialAmmoOn;
boolean AmmoxPos;
boolean specialAmmoxPos;
float ammoTimer;
boolean ammoCounter;
float score=0;
int Timer=0;
int BrickCounter=0;
 boolean timerStart=false;
void setup ()
{
frameRate(240);
float xPos=0;
size(450,600);
background(200,200,200);
// <--------
// <--------BLOCKS
// <--------
float  yPos=0;
int i=0;
for(yPos=0;yPos<=22*7;yPos=yPos+22)
{
  for(xPos=0;xPos<450;xPos=xPos+57)
  {
   blocks[i]= new Block();
   blocks[i].x=xPos;
   blocks[i].y=yPos;
   i++;
  
  }
}
//MUSIC
  file = new SoundFile(this, "track3.mp3");
  file.play();



  // <--------// <--------
  // <--------
  // <--------
}

void draw()
{
    background(0);
   // <--------
   // <--------BLOCKS
    for(int i=0;i<64;i++)
     {
     blocks[i].draw();
     }
    // <--------
   // <--------
   tank.xPos=tankPos;
   tank.yPos=height;
      tank.draw();
    // <--------
    // <--------
    // <--------AMMO
    textAlign(CENTER,CENTER);
textSize(15);
text("SCORE: "+int(score),50,580);
    
      
      if (AmmoOn)
    { 
      
     
      if (AmmoxPos)
        {
        ammo.xPos=tank.xPos;
        AmmoxPos=false;
        }
      ammo.draw();
      ammo.vx=-2;
      
    for(int i=0;i<64;i++)
     {
     if(((ammo.yPos==blocks[i].y+20 && ammo.xPos<=blocks[i].x+55 && ammo.xPos>=blocks[i].x)))
        { 
          
            ammo.vx=0;
           AmmoOn=false;
           ammo.yPos=540;
           if(blocks[i].bomb<40)
           {
           blocks[i].blue=blocks[i].red;
           timerStart=true;
           //if(Timer>=240*2)
           
           }
           else
           {
           blocks[i].x=-60;
           blocks[i].y=-50;
           BrickCounter++;
           score++;
           }
        }
        if(ammo.yPos==0)
        {
        ammo.vx=0;
           AmmoOn=false;
           ammo.yPos=540;
        }
        
     }
     
    
    }
if(timerStart)
{
  Timer++;
}
if(SpecialAmmoOn)
{
 if (specialAmmoxPos)
        {
        specialAmmo.xPos=tank.xPos;
        specialAmmoxPos=false;
        }
      specialAmmo.draw();
      specialAmmo.vx=-2;
for(int i=0;i<64;i++)
     {
     if(specialAmmo.yPos==blocks[i].y+20 && specialAmmo.xPos<=blocks[i].x+55 && specialAmmo.xPos>=blocks[i].x&&blocks[i].blue==blocks[i].red)
        { 
          score++;
            specialAmmo.vx=0;
           SpecialAmmoOn=false;
          specialAmmo.yPos=540;
          timerStart=false;
          Timer=0;
          blocks[i].x=-60;
          blocks[i].y=-50;
          BrickCounter++;
        }
     }
if(specialAmmo.yPos==0)
        {
        specialAmmo.vx=0;
           SpecialAmmoOn=false;
            specialAmmo.yPos=540;
        }
println(Timer);
}
if(Timer>=240*3)
{
  fill(255);
           textAlign(CENTER,CENTER);
           textSize(20);
           text("GAME OVER",width/2,height/2);
           frameRate(0);
}
// <--------
// <--------
if(BrickCounter==64)
{
fill(255);
           textAlign(CENTER,CENTER);
           textSize(20);
           text("YOU GRADUATED NOOB ACADEMY!",width/2,height/2);
           
           frameRate(0);
}
}
void keyPressed()
{
  if(key=='d'&&tankPos<=width-30)
  {
    tankPos=tankPos+10;
  }
  if(key=='a'&&tankPos>=30)
  {
  tankPos=tankPos-10;
  }
  if(key=='w')
  {
    AmmoOn=true;
    AmmoxPos=true;
  }
  if(key=='W')
  {
    SpecialAmmoOn=true;
    specialAmmoxPos=true;
  }
}