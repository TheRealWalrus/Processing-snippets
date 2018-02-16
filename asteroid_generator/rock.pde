class Rock {
  PVector location;
  
  float theta;
  float r = 80;
  int scl = 10;
  float hypo[];

  Rock(float _x, float _y) {
    theta = 2 * PI / scl;
    location = new PVector(_x, _y);
    hypo = new float[scl];
    for (int i = 0; i < hypo.length; i++) {
      hypo[i] = random(r - r * 0.2, r + r * 0.2);
    }
    
  }
  
  void display() {
    stroke(0);
    fill(255);
    beginShape();
    int j = 0;
    for (float i = 0; i < 2 * PI; i += theta) {
      float x = hypo[j] * cos(i);
      float y = hypo[j] * sin(i);
      vertex(x + location.x, y + location.y);
      j++;
    }    
    endShape(CLOSE);
    
    stroke(255, 0, 0);
    noFill();
    ellipse(location.x, location.y, r * 2, r * 2);
  }
}