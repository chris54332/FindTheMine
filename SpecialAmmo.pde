class SpecialAmmo
{
float xPos;
float yPos=540;
float vx;
SpecialAmmo()
{
}
void draw()
{

fill(245,32,199);
noStroke();
ellipse(xPos,yPos,15,15);
yPos=yPos+vx;

}

}