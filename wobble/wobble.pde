Arrow arrow;

void setup() {
  size(640, 480, P2D);
  arrow = new Arrow(new PVector(width / 2, height / 2));
}

void draw() {
  background(255);
  arrow.run();
}