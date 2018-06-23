class Ball {
  PVector location, velocity;
  int r = 10; 

  Ball(PVector _location, PVector _velocity) {
    location = _location;
    velocity = _velocity;
  }

  void run() {
    update();
    display();
  }

  void update() {
    location.add(velocity);


    PVector radialVector =  PVector.sub(location, origo);
    float angle = PVector.angleBetween(radialVector, velocity);
    
    if (radialVector.mag() > height / 2) {
      radialVector.setMag(height / 2); //<>//
      location = PVector.add(origo, radialVector);
      velocity.rotate(PI - 2 * angle);
    }
  }

  void display() {

    fill(255, 10);
    noStroke();
    ellipse(location.x, location.y, r, r);
  }
}
