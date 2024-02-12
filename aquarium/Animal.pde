class Animal {
  
  int x;
  int y;
  int xvelocity;
  int yvelocity;
  int w;
  int h;
  
  Animal(int ax, int ay) {
    x = ax;
    y = ay;
    w = h = 15;
    xvelocity = int(pow(-1, int(random(2)))*int(random(1, 3)));
  }
  
  void display() {
    rect(x, y, w, h);
  }
  
  void move() {
    if (x <= tankX || x+w >= tankX+tankW) {
      xvelocity *= -1;
    }
    if (y <= tankY || y+h >= tankY+tankH-floorH) {
      yvelocity *= -1;
    }
    x += xvelocity;
    y += yvelocity;
  }
  
}
