class Arrow {
  PVector location;
  float theta;
  float angVel;
  float angAcc;

  Arrow(PVector _location) {
    location = _location.copy();
    theta = PI;
  }

  void run() {
    display();
    update();
  }

  void display() {
    fill(0);
    stroke(255);
    
    pushMatrix();
    translate(location.x, location.y);
    rotate(theta);
    beginShape(); 
    vertex(0, -20);
    vertex(5, -10);
    vertex( -5, -10);
    endShape(CLOSE);
    line(0, -10, 0, 20);
    popMatrix();
  }
  
  void update() {
    theta += 0.1;
  }
}