public class Map {


  // Use an array for the array, though other data structures may be more suitable for this task
  int[][] array = new int[][] {       {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                                      {0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0}, 
                                      {0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0}, 
                                      {0, 1, 0, 2, 2, 0, 1, 0, 2, 2, 2, 0, 1, 0, 0, 1, 0, 2, 2, 2, 0, 1, 0, 2, 2, 0, 1, 0}, 
                                      {0, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 3, 0}, 
                                      {0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0}, 
                                      {0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0}, 
                                      {0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0}, 
                                      {0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0}, 
                                      {2, 2, 2, 2, 2, 0, 1, 0, 0, 0, 0, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 2, 2, 2, 2, 2}, 
                                      {2, 2, 2, 2, 2, 0, 1, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 1, 0, 2, 2, 2, 2, 2}, 
                                      {2, 2, 2, 2, 2, 0, 1, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 1, 0, 2, 2, 2, 2, 2}, 
                                      {0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0}, 
                                      {2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 0, 2, 2, 2, 2, 2, 2, 0, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2}, 
                                      {2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 0, 2, 2, 2, 2, 2, 2, 0, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2}, 
                                      {0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 2, 2, 2, 2, 2, 2, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0}, 
                                      {2, 2, 2, 2, 2, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 1, 0, 2, 2, 2, 2, 2}, 
                                      {2, 2, 2, 2, 2, 0, 1, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 1, 0, 2, 2, 2, 2, 2}, 
                                      {2, 2, 2, 2, 2, 0, 1, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 1, 0, 2, 2, 2, 2, 2}, 
                                      {0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0}, 
                                      {0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0}, 
                                      {0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0}, 
                                      {0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0}, 
                                      {0, 3, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 3, 0}, 
                                      {0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0}, 
                                      {0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0}, 
                                      {0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0}, 
                                      {0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0}, 
                                      {0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0}, 
                                      {0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0}, 
                                      {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},                                  
  };


  // Now, the real map
  ArrayList<ArrayList<Tile>> mappy = new ArrayList<ArrayList<Tile>>();

  
  

  // Declare useful constants
   //int tiles_x = mappy.get(0) == null ? 0 : mappy.get(0).size();
   int tiles_y = array.length;
   int tiles_x = array[0].length;
  
  final float cell_width = width/tiles_x;
  final float cell_height = height/tiles_y;
  final float candy_size = 10;
  
  // Declare colors
  final color zero = color(25, 25, 166);
  final color one = color(255, 255, 255);
  final color two = color(0);
  final color three = color(0, 255, 255);
  
  // Constructor
  public Map() {
    ArrayList<ArrayList<Tile>> map = new ArrayList<ArrayList<Tile>>();    
    this.mappy = prepareMappy(map);
  }
  
  // Translate the array into an ArrayList
  ArrayList<ArrayList<Tile>> prepareMappy(ArrayList<ArrayList<Tile>> map) {
     for(int i = 0; i < array.length; i++) {
      map.add(new ArrayList<Tile>());
      for(int j = 0; j < array[0].length; j++) {
        map.get(i).add(new Tile(array[i][j]));
      }
    }
    
    return map;
  }
 
  
  
  public void drawMap() {
  
    // Draw each tile
    for(int i = 0; i < tiles_y; i ++) {
      for(int j = 0; j < tiles_x; j++) {
        
        if(!(mappy.get(i).get(j).id == 1)) {
        stroke(0);
        fill(getColor(i, j));
        rect(j*cell_width, i*cell_height, cell_width, cell_height);
        //println(cell_width + " " + cell_height);
        } else {
        noStroke();
        fill(getColor(i, j));
        ellipse(j*cell_width + cell_width/2, i*cell_width + cell_height/2, candy_size, candy_size);
        }
      }
    }
    
  }
  
  // Unaccessible from outside this class
  private color getColor(int i, int j) {
    color c = color(255, 0, 0);
    
    // Retrieve tile color according to array
    
        switch(array[i][j]) {
          case 0:
           return zero;
          case 1:
           return one;
          case 2:
            return two;
          case 3:
           return three;
        }
  
    
    return c;
  }

}
