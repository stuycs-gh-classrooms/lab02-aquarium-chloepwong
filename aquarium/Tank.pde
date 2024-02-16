class Tank {
  
  int x;
  int y;
  int w;
  int h;
  int f;
  ArrayList<Animal> animals;
  
  Tank(int tx, int ty, int tw, int th, int tf) {
    animals = new ArrayList<Animal>();
    x = tx;
    y = ty;
    w = tw;
    h = th;
    f = tf;
  }
  
  void display() {
    fill(0, 255, 255);
    rect(x, y, w, h);
    fill(231, 196, 150);
    rect(x, height-f, w, f);
    fill(255, 0, 255);
    for (int i = 0; i < animals.size(); i++) {
      if (animals.get(i).alive) {
        animals.get(i).display();
      }
    }
  }
  
  void addAnimal(int mx, int my, int type) {
    if (type == 1) {
      if (my > tankY && my < tankY+tankH-floorH-fishH && mx < tankX+tankW-fishW && mx > tankX) {
        animals.add(new Fish(mx, my, fishW, fishH));
      }
      else if (my > tankY && mx < tankX+tankW-fishW && mx > tankX) {
        animals.add(new Fish(mx, tankY+tankH-floorH-fishH-1, fishW, fishH));
      }
    }
    else if (type == 2) {
      if (mx > tankX && mx < tankX+tankW-crabW && my > tankY+tankH-floorH) {
        animals.add(new Crab(mx, my, crabW, crabH));
      }
      else if (mx > tankX && mx < tankX+tankW-crabW) {
        animals.add(new Crab(mx, tankY+tankH-floorH, crabW, crabH));
      }
    }
    if (type == 3) {
      if (my > tankY && my < tankY+tankH-floorH-turtleH && mx < tankX+tankW-turtleW && mx > tankX) {
        animals.add(new Turtle(mx, my, turtleW, turtleH));
      }
      else if (my > tankY && mx < tankX+tankW-turtleW && mx > tankX) {
        animals.add(new Turtle(mx, tankY+tankH-floorH-turtleH, turtleW, turtleH));
      }
    }
    if (type == 4) {
      if (my > tankY && my < tankY+tankH-floorH-jellyfishH && mx < tankX+tankW-jellyfishW && mx > tankX) {
        animals.add(new Jellyfish(mx, my, jellyfishW, jellyfishH));
      }
      else if (my > tankY && mx < tankX+tankW-jellyfishW && mx > tankX) {
        animals.add(new Jellyfish(mx, tankY+tankH-floorH-jellyfishH, jellyfishW, jellyfishH));
      }
    }
  }
  
  void runAnimals() {
    for (int i = 0; i < animals.size(); i++) {
      if (animals.get(i).alive) {
        animals.get(i).move();
      }
    }
    for (int i = 0; i < animals.size(); i++) {
      if (animals.get(i).alive && animals.get(i).eater) {
        animals.get(i).eat();
        animals.get(i).starve();
      }
    }
    for (int i = 0; i < animals.size(); i++) {
      if (animals.get(i).alive && animals.get(i).loner) {
        animals.get(i).makeFriend();
        animals.get(i).dieAlone();
      }
    }
  }
  
}
