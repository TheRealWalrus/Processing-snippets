Arrow arrow;

void setup() {
  size(640, 480);
  arrow = new Arrow(new PVector(width / 2, height / 2));
}

void draw() {
  background(0);
  arrow.run();
}