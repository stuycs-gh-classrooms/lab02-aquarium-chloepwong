class Fish extends Animal {
  
    Fish(int fx, int fy, int fw, int fh) {
      super(fx, fy, fw, fh);
      yvelocity += pow(-1, int(random(2)))*int(random(1, 3));
    }
    
    void display() {
      fill (255, 0, 255);
      super.display();
    }
    
}
