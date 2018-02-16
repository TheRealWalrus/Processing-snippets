PVector line1;
PVector line2;
PVector circle;
float r = 20;

void setup() {
  size(640, 480);
  line1 = new PVector(200, 200);
  line2 = new PVector(440, 400);
}

void draw() {
  circle = new PVector(mouseX, mouseY);
  background(0);

  strokeWeight(5);
  stroke(255);
  line(line1.x, line1.y, line2.x, line2.y);

  noStroke();
  if (lineCircle(line1, line2, circle, r)) {
    fill(250, 0, 0);
  } else {
    fill(0, 255, 255);
  }
  
  //if (linePoint(line1, line2, circle)) {
  //  fill(250, 0, 0);
  //} else {
  //  fill(0, 255, 255);
  //}
  
  ellipseMode(RADIUS);
  ellipse(circle.x, circle.y, r, r);
}

boolean pointCircle(PVector point, PVector circle, float r) {
  float distance = PVector.dist(point, circle);
  if (distance <= r) {
    return true;
  }
  return false;
}

boolean linePoint(PVector line1, PVector line2, PVector point) {

  // get distance from the point to the two ends of the line
  float d1 = PVector.dist(line1, point);
  float d2 = PVector.dist(line2, point);

  // get the length of the line
  float lineLen = PVector.dist(line1, line2);

  // since floats are so minutely accurate, add
  // a little buffer zone that will give collision
  float buffer = 0.1;    // higher # = less accurate

  // if the two distances are equal to the line's
  // length, the point is on the line!
  // note we use the buffer here to give a range,
  // rather than one #
  if (d1+d2 >= lineLen-buffer && d1+d2 <= lineLen+buffer) {
    return true;
  }
  return false;
}

boolean lineCircle(PVector point1, PVector point2, PVector circle, float r) {

  // is either end INSIDE the circle?
  // if so, return true immediately
  boolean inside1 = pointCircle(point1, circle, r);
  boolean inside2 = pointCircle(point2, circle, r);
  if (inside1 || inside2) return true;

  // get length of the line
  float len = PVector.dist(point1, point2);
  //println(len);

  // get dot product of the line and circle
  float dot = ( ((circle.x-point1.x)*(point2.x-point1.x)) + ((circle.y-point1.y)*(point2.y-point1.y)) ) / pow(len, 2);

  // find the closest point on the line
  float closestX = point1.x + (dot * (point2.x-point1.x));
  float closestY = point1.y + (dot * (point2.y-point1.y));
  PVector closest = new PVector(closestX, closestY);

  // is this point actually on the line segment?
  // if so keep going, but if not, return false
  boolean onSegment = linePoint(point1, point2, closest);
  if (!onSegment) return false;

  // get distance to closest point
  float distance = PVector.dist(closest, circle);

  if (distance <= r) {
    return true;
  }
  return false;
}