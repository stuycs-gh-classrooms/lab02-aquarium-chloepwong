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
      animals.get(i).display();
    }
  }
  
  void addAnimal(int mx, int my) {
    if (my > height-tankH && my < height-floorH-20) {
      animals.add(new Fish(mx, my));
    }
    else if (my > height-floorH) {
      animals.add(new Crab(mx, my));
    }
  }
  
  void moveAnimals() {
    for (int i = 0; i < animals.size(); i++) {
      animals.get(i).move();
    }
  }
  
}
