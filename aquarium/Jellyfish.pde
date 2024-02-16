class Jellyfish extends Animal {
  
  int r;
  
  Jellyfish(int tx, int ty, int tw, int th) {
    super(tx, ty, tw, th);
    yvelocity += pow(-1, int(random(2)))*int(random(1, 3));
    imgL = loadImage("JellyfishL.png");
    imgR = loadImage("JellyfishR.png");
    r = int(random(2));
    alive = true;
    eater = false;
    loner = false;
  }
  
  void move() {
    changeDirection();
    if (r == 0) {
      x += xvelocity;
    }
    else {
      y += yvelocity;
    }
  }
   
}
