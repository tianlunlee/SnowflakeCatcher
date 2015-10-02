Snowflake  [] snow = new Snowflake[100];


int i;
void setup()
{
  //your code here
  background(0);
  frameRate(10);
  size(300, 300);




for ( i = 0; i < 100; i++) {
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

for ( i = 0; i < 100; i++) {

    snow[i].erase();
    snow[i].lookDown();
    snow[i].move();

    snow[i].wrap();
    snow[i].show();
}
  if (mousePressed == true) {
    mouseDragged();
  }
}
void mouseDragged()
{
  //your code here

  fill(255, 0, 0);
  noStroke();
  ellipse(mouseX, mouseY, 5, 5);
  if (mousePressed == true && mouseButton == RIGHT) {
    background(0);
  }

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
    stroke(0);
    ellipse(sX, sY, 2, 2);
  }
  void lookDown()
  {
    //your code here
    if ((get(sX, sY +2) != color(0)))  {
      isMoving = false;
      if ((get(sX, sY +2) != color(255) ) && sY > 250) {
      isMoving = false;
      noStroke();
      fill(250, 250, 255);
      rect(sX, sY, 2, 2 ,80);
      sX = (int)(Math.random()*301);
      sY = 0;
    }
    }
    else {
      isMoving = true;
    }
  }
  void erase()
  {
    //your code here
    fill(0);
    ellipse(sX-2, sY-2, 2, 2);

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


