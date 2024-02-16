class Fish extends Animal {
  
    Fish(int fx, int fy, int fw, int fh) {
      super(fx, fy, fw, fh);
      yvelocity += pow(-1, int(random(2)))*int(random(1, 3));
      imgL = loadImage("FishL.png");
      imgR = loadImage("FishR.png");
      alive = true;
      eater = false;
      loner = false;
    }
    
    void move() {
      int r = int(random(150));
      if (r == 0 && x > 0 && x + w < tankX+tankW) {
        xvelocity *= -1;
      }
      if (r == 1 && y > tankY && y + h < tankY+tankH-floorH) {
        yvelocity *= -1;
      }
      super.move();
    }
    
}
