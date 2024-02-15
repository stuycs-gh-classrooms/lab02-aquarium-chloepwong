Tank t;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;

int fishSize = 15;
int crabSize = 10;

void setup() {
  size(600, 600);
  tankW = width;
  tankH = height - 50;
  noStroke();
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.display();
}//setup


void draw() {
  background(150);
  t.moveAnimals();
  t.display();
}

void keyPressed () {
  if (key == ' ') {
    t.addAnimal(mouseX, mouseY);
  }
  if (key == 'r') {
    for (int i = 0; i < t.animals.size(); i++) {
      t.animals.remove(i);
    }
  }
}
