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
  println("Pacman is on the " + "(" + pac.x/new Map().cell_width + ", " + pac.y/new Map().cell_height + ")" );
  
  yspeed = pac.canGoUp() ? yspeed : 0;
  yspeed = pac.canGoDown() ? yspeed : 0;
  xspeed = pac.canGoLeft() ? xspeed : 0;
  xspeed = pac.canGoRight() ? xspeed : 0;
  
  //println("X speed is: " + xspeed);
  //println("Y speed is: " + yspeed);
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
        xspeed = pac.canGoLeft() ? -speed_increment : 0;
          break;
          
        case 'd':
        // Go right
        yspeed = 0;
        xspeed = pac.canGoRight() ? speed_increment : 0;
          break;
          
        case 's':
        // Go left
        yspeed = pac.canGoLeft() ? speed_increment : 0;
        xspeed = 0;
          break;
      }
    }
}
