import processing.sound.*;

SoundFile song;

void setup() {
  size(640, 360);
  song = new SoundFile(this, "data/341238__sharesynth__explosion01.wav");
  song.play();
}

void draw() {
  
}

void mousePressed() {
  if (song.isPlaying()) {
    song.pause();
  } else {
    song.play();
  }
}