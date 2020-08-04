
// Declare position and speed variables
float xspeed = 0;
float yspeed = 0;
final float speed_increment = 2;
int tileLeft = 0;
int tileRight = 0;
int tileDown = 0;
int tileUp = 0;


// Declare objects
Packy pac;
Mappy map;

void setup() {
  ellipseMode(CENTER);
  size(756, 837);
  frameRate(60);
  surface.setResizable(false);
  pac = new Packy();
  map = new Mappy();
}

void draw() {
  // Necessary steps
  background(0);
  map.drawTheMap();
  pac.updatePac(xspeed, yspeed);
  pac.drawPac();
  pac.isPacAtCenter();
  // Color sourrounding tiles
  pac.colorSurroundingTiles(pac.x, pac.y);
  
  tileLeft = (int) (pac.x/map.cell_width);
  tileRight = (int) (pac.x/map.cell_width) + 1;
  tileDown = (int) (pac.y/map.cell_height);
  tileUp = (int) (pac.y/map.cell_height) + 1;
  
  println("X is: " + tileLeft + " " + "Y is: " + tileDown);
  // Set speed to 0 if a wall has been hit
  //pac.wallHasBeenHit();
  //yspeed = pac.hitWallUp ? 0 : yspeed;
  //xspeed = pac.hitWallDown ? 0 : xspeed;


      // NORTH
      if(array[tileUp-1][tileLeft] == 0 && yspeed < 0){
        yspeed = 0;
      }
      
      // SOUTH
      if(array[tileDown+1][tileLeft] == 0 && yspeed > 0){
       yspeed = 0;
      } 
      
      // WEST
      if(array[tileDown][tileRight-1] == 0 && xspeed < 0){
       xspeed = 0;
      }

       // EAST
       if(array[tileDown][tileLeft] == 0 && xspeed > 0){
         xspeed = 0;  
      } 

  // Check if a key has been pressed
  if (keyPressed) {
    
    // Check for the north direction
    if(key == 'w') {
      
      // Set speed if it isn't a wall 
      if(array[tileUp-1][tileLeft] != 0){
       yspeed = -speed_increment;
       xspeed = 0;
      } else {
       // if it is a wall
       yspeed = 0;
      }
    } 
    
      // Check for the south direction
    if(key == 's') {
      
      // Adapt speed according to tile in current direction
      if(array[tileDown+1][tileLeft] != 0){
       yspeed = speed_increment;
       xspeed = 0;
      } else {
        yspeed = 0;
      }
    } 
    
      // Check for the west direction
    if(key == 'a') {
      
      // Adapt speed according to tile in current direction
      if(array[tileDown][tileRight-1] != 0){
       yspeed = 0;
       xspeed = -speed_increment;
      } else {
        xspeed = 0;
      }
    } 
    
      // Check for the east direction
    if(key == 'd') {
      
      // Adapt speed according to tile in current direction
      if(array[tileDown][tileLeft] != 0){
       yspeed = 0;
       xspeed = speed_increment;
      } else {
        xspeed = 0;
      }
    } 
  
    
 
      
 }
}
