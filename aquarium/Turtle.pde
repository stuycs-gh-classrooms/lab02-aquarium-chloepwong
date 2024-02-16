class Turtle extends Animal {
  
  Turtle(int tx, int ty, int tw, int th) {
    super(tx, ty, tw, th);
    yvelocity += pow(-1, int(random(2)))*int(random(1, 3));
    imgL = loadImage("TurtleL.png");
    imgR = loadImage("TurtleR.png");
    alive = true;
    eater = true;
    hunger = 0;
    loner = false;
  }
  
  void move() {
    super.move();
    int r = int(random(2));
    if ((x % 15) == 0 && r == 0 && y < tankY+tankH-floorH) {
      yvelocity *= -1;
    }
  }
  
}
