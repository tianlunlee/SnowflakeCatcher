void setup()
{
  //your code here
  background(0);
  size(300, 300);
  fill(110, 60, 30);
  rect(0, 290, 300, 10);
  fill(0);
  rect(125, 390, 50, 20);
}
void draw()
{
  //your code here
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
    if (get(sX, sY +1) != color(0)) {
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
  }
}


