class Packy {

  float x = width/2;
  float y = height/2;
  float size = (new Map().cell_width - 1);
  // Color yellow
  color c = color(255, 250, 0);
  
  void drawPac() {
    noStroke();
    fill(c);
    ellipse(x, y, size, size);
  }

  void updatePac(float xspeed, float yspeed) {
    x += xspeed;
    y += yspeed;
  } 
  
  
  
  /*public Packy(int x, int y, int size, color c) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.c = c;
  }*/




  

}
