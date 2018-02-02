class Rock {
  PVector location;
  
  float theta;
  float r = 80;
  float scl = 14;

  Rock(float _x, float _y) {
    theta = 2 * PI / scl;
    location = new PVector(_x, _y);
  }
  
  void display() {
        //ellipse(location.x, location.y, 2 * r, 2 * r);
    beginShape();

    for (float i = 0; i < 2 * PI; i += theta) {
      float x = r * cos(i);
      float y = r * sin(i);
      
      vertex(x + location.x, y + location.y);
    }
    
    /*vertex(45, 43);
    vertex(81, 10);
    vertex(90, 140);
    vertex(10, 10);*/
    
    endShape(CLOSE);
  }
}