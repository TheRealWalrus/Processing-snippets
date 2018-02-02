PVector location;
PVector dir;

float theta = PI * 1.5;
float r = 100;

void setup() {
  size(640, 480);
  location = new PVector(width / 2, height / 2);
}

void draw() {
  if (keyPressed && (key == CODED)) { // If it’s a coded key
    if (keyCode == LEFT) { // If it’s the left arrow
      theta -= 0.01;
    } else if (keyCode == RIGHT) { // If it’s the right arrow
      theta += 0.01;
    }
  }

  dir = new PVector(r * cos(theta), r * sin(theta));
  background(255);
  strokeWeight(4);
  line(location.x, location.y, location.x + dir.x, location.y + dir.y);
  //theta += 0.01;
}