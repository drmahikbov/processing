// Declare objects
Packy pac;
Mappy map;

// Declare position and speed variables
float xspeed = 0;
float yspeed = 0;
final float speed_increment = 2;


void setup() {
  ellipseMode(CENTER);
  size(756, 837);
  frameRate(60);
  surface.setResizable(false);
  pac = new Packy();
  map = new Mappy();
}

void draw() {
  background(0);
  map.drawTheMap();
  pac.updatePac(xspeed, yspeed);
  pac.drawPac();
  
  // check if pointers are in the same tile
        // then check if he can move
  if(pac.pointersAreCenteredX()) {
    pac.checkForWallsX();
  }
  
  if(pac.pointersAreCenteredY()) {
    pac.checkForWallsY();
  }
  
  // Check for user movement input
  if (keyPressed) {
  }
  
}
