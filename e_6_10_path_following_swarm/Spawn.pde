class Spawn {
  int interval = 1000;
  int timer;
  int spawnHeight = height / 2;
  int spread = 100;
  
  Spawn() {
    timer = millis();
  }
  
  void run() {
    if (timer + interval > millis()) {
      timer = millis();
      vehicles.add(new Vehicle(0, random(spawnHeight - spread, spawnHeight + spread)));
    }
  }  
}
