// Declare objects
Packy pac;
Mappy map;

// Declare position and speed variables
float xspeed = 0;
float yspeed = 0;
final float speed_increment = 1;


void setup() {
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
 
  println("pac is not centered");
  // check if pointers are in the same tile
  if(pac.pointersAreCenteredX() && pac.pointersAreCenteredY()) {
    

    // then check if he can move
    xspeed = pac.checkForWallLeft() ? 0 : xspeed;
    xspeed = pac.checkForWallRight() ? 0 : xspeed;

    yspeed = pac.checkForWallUp() ? 0 : yspeed;
    yspeed = pac.checkForWallDown() ? 0 : yspeed; 
  } // else nothing
 
  
  // Check for user movement input
  if (keyPressed) {
    
    if(key == 'w' && !pac.checkForWallUp()) {
      
      if(pac.pointersAreCenteredX()) {
        yspeed = -speed_increment;
        xspeed = 0;
      } else if(pac.pointersAreCenteredY()) {
        // Do nothing
      }
      
    }
    
      if(key == 's' && !pac.checkForWallDown()) {
        if(pac.pointersAreCenteredX()) {
             yspeed = speed_increment;
             xspeed = 0;
          
        }
    }
    
      if(key == 'a' && !pac.checkForWallLeft()) {
        if(pac.pointersAreCenteredY()) {
             yspeed = 0;
             xspeed = -speed_increment;
        }
    }
    
      if(key == 'd' && !pac.checkForWallRight()) {
        if(pac.pointersAreCenteredY()) {
            yspeed = 0;
            xspeed = speed_increment;
        }
    }
    
  }
  
}
