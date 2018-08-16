boolean[] nodes;

void setup() {
  size(640, 480);
  nodes = new boolean[width];
  for (int i = 0; i < nodes.length; i++) {
    nodes[i] = false;
  } 
  drawRakaman();
}

void drawRakaman() {
  boolean orientation = true;
  int currentIndex = 0;
  
  for (int i = 1; i < 100; i++) {
    int nextIndex;
    
    if (currentIndex - i > 0) {
      if (!nodes[currentIndex - i]) {
        nextIndex = currentIndex - i;
      } else {
        nextIndex = currentIndex + i;
      }
    } else {
      nextIndex = currentIndex + i;
    }
    
    noFill();
    float scl = 2.8;
    arc((currentIndex + nextIndex) / 2 * scl, height / 2, i * scl, i * scl, orientation ? 0 : PI, orientation ? PI : PI * 2);
    orientation = !orientation;
    nodes[nextIndex] = true;
    currentIndex = nextIndex;
  }
}
