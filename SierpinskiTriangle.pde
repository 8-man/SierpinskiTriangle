int deku = 10;
public void setup()
{
  size(500, 500);
  background(0);
}
public void draw()
{
  sierpinski(80, 400, 350);
}
public void keyTyped()//optional
{
  if (key == 'a' || key == 'A')
  {
    if(deku > 5)
    deku = deku / 2;
    else
    deku = deku * 1;
  }
  if (key == 'd' || key == 'D')
   {
     if(deku < 500)
     deku = deku  * 2;
     else
     deku = deku * 1;
   }
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= deku)
  {
    triangle(x+(len/2), y+len, x, y, x+len, y);
  }
  else
  {
    sierpinski(x, y, len/2);
    sierpinski(x + (len/2), y, len/2);
    sierpinski(x + (len/4), y - (len/2), len/2);
  }
  
}