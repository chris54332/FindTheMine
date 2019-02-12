class Block
{
  float x;
  float y;
  float bomb=random(100);
  float colour=200;
  color red=color(200,0,0);
  color blue=color(0,0,200);
  boolean destroyed=false;
  Block()
{ 
  
  stroke(5);
  

}
void draw()

{
  stroke(5);
fill(blue);
rect(x,y,55,20);
}
}