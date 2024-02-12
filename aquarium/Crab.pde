class Crab extends Animal {
  
  int amp;
  int k;
  int a;
  
  Crab(int cx, int cy) {
    super(cx, int(random(floorH))+tankH);
    amp = 25;
    k = tankH - int(random(-(floorH-2*amp)/2+h/2, (floorH-2*amp)/2-h/2));
    a = int(pow(-1, int(random(2))));
  }
  
  void display() {
    fill(255, 0, 0);
    circle(x, y, w);
  }
  
  void move() {
    if (x-w/2 <= tankX || x+w/2 >= tankX+tankW) {
      xvelocity *= -1;
    }
    x += xvelocity;
    y = int(a*amp*(sin(radians(x))))+k;
  }
    
}
