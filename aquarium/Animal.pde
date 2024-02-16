class Animal {
  
  int x;
  int y;
  int xvelocity;
  int yvelocity;
  int w;
  int h;
  int hunger;
  
  Animal(int ax, int ay, int aw, int ah) {
    x = ax;
    y = ay;
    w = aw;
    h = ah;
    xvelocity = int(pow(-1, int(random(2)))*int(random(1, 3)));
  }
  
  void display() {
    rect(x, y, w, h);
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
  
  void turn() {
    int r = int(random(150));
    if (r == 0 && x > 0 && x + w < tankX+tankW) {
      xvelocity *= -1;
    }
    if (r == 1 && y > tankY && y + h < tankY+tankH-floorH) {
      yvelocity *= -1;
    }
  }
  
}
