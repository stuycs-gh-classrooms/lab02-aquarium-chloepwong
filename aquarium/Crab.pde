class Crab extends Animal {
  
  int amp;
  int k;
  int a;
  PImage img;
  
  Crab(int cx, int cy, int cw, int ch) {
    super(cx, int(random(floorH))+tankH, cw, ch);
    amp = 25;
    k = tankH - int(random(-(floorH-2*amp)/2+h, (floorH-2*amp)/2));
    a = int(pow(-1, int(random(2))));
    img = loadImage("Crab.png");
  }
  
  void display() {
    image(img, x, y, w, h);
  }
  
  void move() {
    if (x <= tankX || x+w >= tankX+tankW) {
      xvelocity *= -1;
    }
    x += xvelocity;
    y = int(a*amp*(sin(radians(x))))+k;
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
