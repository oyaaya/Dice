void setup()
{
  size(500,500);
  noLoop();
}
void draw()
{
  //your code here
  background(100,55,55);
  fill(0);
  textSize(30);
  int sum = 0;
  for( int a = 0; a< 400; a+=50)
  {
    for(int b = 45; b <400; b+=50 )
    {
      Die row = new Die(a,b);
      row.show();
      sum = sum+row.dots;
    }
  }
  text("Your Number is:"+sum,150, 30);  
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int DX, DY, dots;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    DX = x;
    DY = y;
    dots = (int)(Math.random()*6+1);
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    //your code here
    noStroke();
    fill(0);
    rect(DX,DY,50,50,10);
    if (dots == 1) {
      fill(255);
      ellipse(DX+25,DY+25,10,10);
    }
    if (dots == 2) {
      fill(255);
      ellipse(DX+10,DY+10,10,10);
      ellipse(DX+40,DY+40,10,10);
    }
    if (dots == 3) {
      fill(255);
      ellipse(DX+10,DY+10,10,10);
      ellipse(DX+25,DY+25,10,10);
      ellipse(DX+40,DY+40,10,10);
    }
    if (dots == 4) {
      fill(255);
      ellipse(DX+10,DY+10,10,10);
      ellipse(DX+40,DY+40,10,10);
      ellipse(DX+40,DY+10,10,10);
      ellipse(DX+10,DY+40,10,10);
    }
    if (dots == 5) {
      fill(255);
      ellipse(DX+10,DY+10,10,10);
      ellipse(DX+40,DY+40,10,10);
      ellipse(DX+40,DY+10,10,10);
      ellipse(DX+10,DY+40,10,10);
      ellipse(DX+25,DY+25,10,10);

    }
    if (dots == 6) {
      fill(255);
      ellipse(DX+10,DY+10,10,10);
      ellipse(DX+40,DY+40,10,10);
      ellipse(DX+40,DY+10,10,10);
      ellipse(DX+10,DY+40,10,10);
      ellipse(DX+10,DY+25,10,10);
      ellipse(DX+40,DY+25,10,10);
    }

  }
}
