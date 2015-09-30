Snowflake  [] snow = new Snowflake[200];


int i;
void setup()
{
  //your code here
  background(0);
  size(300, 300);




for ( i = 0; i < 200; i++) {
    snow[i] = new Snowflake();
  }
    

  


}
void draw()
{
  //your code here
  fill(110, 60, 30);
  rect(0, 290, 300, 10);
    fill(0);
  rect(120, 290, 50, 20);
  rect(-100, -100, 400, 200);
for ( i = 0; i < 200; i++) {

    snow[i].erase();
    snow[i].lookDown();
    snow[i].move();

    snow[i].wrap();
    snow[i].show();
}
}
void mouseDragged()
{
  //your code here
}

class Snowflake
{
  //class member variable declarations
  int sX, sY;
  boolean isMoving;

  Snowflake()
  {
    //class member variable initializations
    sX = (int)(Math.random()*301);
    sY = (int)(Math.random()*301);
    isMoving = true;
  }
  void show()
  {
    //your code here
    fill(255);
    ellipse(sX, sY, 5, 5);
  }
  void lookDown()
  {
    //your code here
    if ((get(sX, sY +5) == color(110, 60, 30)) && (get(sX, sY +2) != color(255)) )  {
      isMoving = false;
    }
    else {
      isMoving = true;
    }
  }
  void erase()
  {
    //your code here
    fill(0);
    ellipse(sX, sY, 5, 5);

  }
  void move()
  {
    //your code here
    if (isMoving == true) {
      sY += 1;
    }
    }
  void wrap()
  {
    //your code here
    if (sY > 300) {
      sY = 0;
      sX = (int)(Math.random()*300);

    }
  }
}


