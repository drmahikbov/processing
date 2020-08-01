float xspeed = 0;
float yspeed = 0;
final float speed_increment = 1;
// Create Pac
Packy pac;
Map map;


void setup() {
  size(756, 837);
  frameRate(60);
  surface.setResizable(false);
  pac = new Packy();
  map = new Map();
}

void draw(){
  background(0);
  map.drawMap();
  pac.drawPac();
  pac.updatePac(xspeed, yspeed);

  
  
  if (keyPressed) {
    switch(key) {
      case 'w':
      // Go up
      yspeed = -speed_increment;
      xspeed = 0;
        break;
        
      case 'a':
      // Go left
      yspeed = 0;
      xspeed = -speed_increment;
        break;
        
      case 'd':
      // Go right
      yspeed = 0;
      xspeed = speed_increment;
        break;
        
      case 's':
      // Go left
      yspeed = speed_increment;
      xspeed = 0;
        break;
    }
  }
}
