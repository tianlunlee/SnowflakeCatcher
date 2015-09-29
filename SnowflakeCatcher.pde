Snowflake  [] snow = new Snowflake[50];



void setup()
{
  //your code here
  background(0);
  size(300, 300);
  fill(110, 60, 30);
  rect(0, 290, 300, 10);
  fill(0);
  rect(120, 290, 50, 20);
  rect(-100, -100, 400, 200);
}
void draw()
{
  //your code here
for (int i = 0; i < 50; i ++) {
    snow[i] = new Snowflake();

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
    sY = 5;
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
    if ((get(sX, sY +1) != color(0, 0, 0)) || (get(sX, sY +1) != color(255)) )  {
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
    ellipse(sX, sY, 7, 7);

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


