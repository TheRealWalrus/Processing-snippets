Ball ball;
PVector origo;

void setup() {
  background(0);
  size(640, 480, P2D);
  ellipseMode(RADIUS);
  origo = new PVector(width /2, height / 2);
  PVector spawnPoint = PVector.random2D();
  spawnPoint.setMag(random(height / 4));
  spawnPoint.add(origo);
  PVector ballVelocity = PVector.random2D();
  ballVelocity.setMag(2);
  ball = new Ball(spawnPoint, ballVelocity);
}

void draw() {
  //background(#8B4513);
  //fill(#228B22);
  //ellipse(width / 2, height / 2, height / 2, height / 2);
  ball.run();
}
