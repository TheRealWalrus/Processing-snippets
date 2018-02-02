Rock rock;

void setup() {
  size(640, 480);
  rock = new Rock(width / 2, height / 2);
}

void draw() {
  rock.display();
}