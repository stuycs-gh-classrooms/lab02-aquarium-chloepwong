class Crab extends Animal {
  
  int amp;
  int k;
  int a;
  
  Crab(int cx, int cy, int cw, int ch) {
    super(cx, int(random(floorH))+tankH, cw, ch);
    amp = 25;
    k = tankH - int(random(-(floorH-2*amp)/2+h, (floorH-2*amp)/2));
    a = int(pow(-1, int(random(2))));
    imgL = loadImage("Crab.png");
    imgR = loadImage("Crab.png");
  }
  
  void move() {
    if (x <= tankX || x+w >= tankX+tankW) {
      xvelocity *= -1;
    }
    x += xvelocity;
    y = int(a*amp*(sin(radians(x))))+k;
  }
    
}
