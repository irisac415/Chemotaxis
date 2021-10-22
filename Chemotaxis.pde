class Walker
{
  int myX, myY;
  Walker()
  {
    myX = 300;
    myY = 300;
  }
  void walk()
  {
    if (mouseX>myX)
      myX = myX + (int)(Math.random()*5)-1;
    if (mouseX<myX)
      myX = myX + (int)(Math.random()*5)-3;
    if (mouseY>myY)
      myY = myY + (int)(Math.random()*5)-1;
    if (mouseY<myY)
      myY = myY + (int)(Math.random()*5)-3;
  }
  void show()
  {
    if (mouseX>myX) {
      ellipse(myX, myY, 50, 30);
      triangle(myX-37, myY-12, myX-37, myY+12, myX-10, myY);
    }
    if (mouseX<myX) {
      ellipse(myX, myY, 50, 30);
      triangle(myX+37, myY-12, myX+37, myY+12, myX+10, myY);
    }
  }
}

Walker fred;
Walker matt;
Walker [] betterOldPplHome = new Walker[25];

void setup()
{
  size(600, 600);
  background(255);
  frameRate(70);
  fred = new Walker();
  matt = new Walker();
  for (int i = 0; i < betterOldPplHome.length; i++) {
    betterOldPplHome[i] = new Walker();
  }
}

int cooler = color(210, 180, 140);

void draw()
{
  background(200, 220, 255);
  fill(cooler);
  ellipse(mouseX, mouseY, 10, 10);
  int j = 0;
  while (j<betterOldPplHome.length) {
    fill(15, (int)(Math.random()*80)+100, (int)(Math.random()*155)+100);
    betterOldPplHome[j].walk();
    betterOldPplHome[j].show();
    j++;
    noStroke();
  }
}  
