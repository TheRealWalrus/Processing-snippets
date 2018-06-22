class Arrow {
  PVector location;
  float theta;
  float angVel;
  float angAcc;
  float k; //string constant
  

  Arrow(PVector _location) {
    location = _location.copy();
    k = 0.005;
    theta = 2.5;
    
  }

  void run() {
    display();
    update();
  }

  void display() {
    fill(#50EACF);
    stroke(#744015);
    
    pushMatrix();
    translate(location.x, location.y);
    rotate(theta);
    beginShape(); 
    vertex(0, 20);
    vertex(5, 10);
    vertex( -5, 10);
    endShape(CLOSE);
    line(0, -20, 0, 10);
    popMatrix();
  }
  
  void update() {
    angAcc = -1 * theta * k;
    angVel += angAcc;
    angVel *= 0.99;
    theta += angVel;
  }
}