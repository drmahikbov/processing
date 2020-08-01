class FlappyBird {
  
  float x = 32;
  float y = height/2;
  int size = 30;
  color c = color(250, 0, 0);
  
  final float gravity = 0.1;
  float velocity = 0;
  
  
  FlappyBird() {
  }
  
  void drawFlappy() {
    noStroke();
    fill(c);
    rect(x, y, size, size);
  }

  void updateFlappy(float xspeed, float yspeed) {
    x += xspeed;
    y += yspeed;
  }
  
  void fallFlappy() {
    velocity+= gravity;
    y+= velocity;
  }

}
