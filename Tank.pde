class Tank
{
float xPos;
float yPos;
Tank()
{
}
void draw()
{

fill(255);
noStroke();
rect(xPos-12.5,yPos-50,25,50);
rect(xPos-25,yPos-20,50,20);
}

}