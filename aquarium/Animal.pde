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
  boolean eater;
  int loneliness;
  boolean loner;
  
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
    if (x <= tankX) {
      xvelocity = 1;
    }
    if (x+w >= tankX+tankW) {
      xvelocity = -1;
    }
    if (y <= tankY) {
      yvelocity = 1;
    }
    if (y+h >= tankY+tankH-floorH) {
      yvelocity = -1;
    }
  }
  
  void move() {
    changeDirection();
    x += xvelocity;
    y += yvelocity;
  } 
  
  boolean collide(Animal a) {
    if (a != this && !(a instanceof Turtle)) {
      return (dist(this.x+this.w/2, this.y+this.h/2, a.x+a.w/2, a.y+a.h/2) <= 50);
    }  
    return false;
  }
  
  void eat() {
    for (int i = 0; i < t.animals.size(); i++) {
      if (collide(t.animals.get(i)) && t.animals.get(i).alive) {
        t.animals.get(i).alive = false;
        hunger = 0;
      }
    }
  }
  
  void starve() {
    hunger += 1;
    if (hunger >= 1000) {
      alive = false;
    }
  }
  
  void makeFriend() {
    for (int i = 0; i < t.animals.size(); i++) {
      if (collide(t.animals.get(i)) && t.animals.get(i).alive) {
        loneliness = 0;
      }
    }
  }
  
  void dieAlone() {
    loneliness += 1;
    if (loneliness >= 1500) {
      alive = false;
    }
  }
  
}
