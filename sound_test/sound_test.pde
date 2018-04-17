import processing.sound.*;

SoundFile song;

void setup() {
  size(640, 360);
  background(0);
  song = new SoundFile(this, "song.mp3");
    //song.play();
}

void draw() {

}

//void mousePressed() {
//  if (song.isPlaying()) {
//    song.pause();
//  } else {
//    song.play();
//  }
//}

void mousePressed() {
  song.play();
}