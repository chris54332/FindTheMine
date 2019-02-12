class Ammo
{
float xPos;
float yPos=540;
float vx;
Ammo()
{
}
void draw()
{

fill(0,255,0);
noStroke();
ellipse(xPos,yPos,15,15);
yPos=yPos+vx;

}

}