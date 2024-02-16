class Animal {
  
  PImage imgL;
  PImage imgR;
  int x;
  int y;
  int xvelocity;
  int yvelocity;
  int w;
  int h;
  int hunger;
  boolean alive;
  
  Animal(int ax, int ay, int aw, int ah) {
    x = ax;
    y = ay;
    w = aw;
    h = ah;
    xvelocity = int(pow(-1, int(random(2)))*int(random(1, 3)));
    alive = true;
  }
     
  void display() {
    if (xvelocity < 0) {
      image(imgL, x, y, w, h);
    }
    else {
      image(imgR, x, y, w, h);
    }
  }
  
  void changeDirection() {
    if (x <= tankX || x+w >= tankX+tankW) {
      xvelocity *= -1;
    }
    if (y <= tankY || y+h >= tankY+tankH-floorH) {
      yvelocity *= -1;
    }
  }
  
  void move() {
    changeDirection();
    x += xvelocity;
    y += yvelocity;
  } 
  
}
