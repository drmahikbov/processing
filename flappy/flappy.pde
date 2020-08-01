float xspeed = 0;
float yspeed = 0;

FlappyBird flappy;

void setup() {
  size(840, 930);
  flappy = new FlappyBird();
  frameRate(60);
}

void draw() {
  background(50, 168, 164);
 
  flappy.updateFlappy(xspeed, yspeed);
  flappy.drawFlappy();
  flappy.fallFlappy();
  
  if (keyPressed) {
    switch(key) {
      case 32:
      // Go up
      yspeed = -3;
      xspeed = 0;
        break;  
    }
  }
  
}
