Tank t;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;

int fishW = 50;
int fishH = 30;
int crabW = 50;
int crabH = 35;
int turtleW = 120;
int turtleH = 60;
int jellyfishW = 35;
int jellyfishH = 45;

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
  t.runAnimals();
  t.display();
}

void keyPressed () {
  if (key == '1') {
    t.addAnimal(mouseX, mouseY, 1);
  }
  if (key == '2') {
    t.addAnimal(mouseX, mouseY, 2);
  }
  if (key == '3') {
    t.addAnimal(mouseX, mouseY, 3);
  }
  if (key == '4') {
    t.addAnimal(mouseX, mouseY, 4);
  }
}
