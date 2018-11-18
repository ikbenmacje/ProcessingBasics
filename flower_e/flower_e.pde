/**
  * flower_d
  *
  * Draw grid of flowers by using a class
  * Every flower is an instance of the flower class 
  * Each petal is an ellipse and rotated to match the angel of the position in the circle
  *
  */ 

// use an array of colors for colorpalette
color[] colors = {color(73, 10, 61), color(189, 21, 80), color(233, 127, 2), color(248, 202, 0), color(138, 155, 15)};

// declare you want to make an array of flower objects
Flower[] flowers;

// --> SETUP
void setup() {
  size(640, 480);
  background(0);
  
  int rows = 4;
  int collumns = 4;
  int numFlowers = rows*collumns;
  
  // declare how many flower objects you want to make
  flowers = new Flower[numFlowers];
  
  for(int r=0; r<rows; r++){
    for(int c=0; c<collumns; c++){
      int i = c + r * collumns;
      int x = c * width/collumns + (width/collumns)/2;
      int y = r * height/rows + (height/rows)/2;
      // create the object with the right parameters
      flowers[i] = new Flower(new PVector(x,y));
    }
  }
  
  
}



// --> DRAW
void draw() {

  background(colors[0]);
  noStroke();

  // Display the flowers
  for(int i=0; i<flowers.length;i++){
    flowers[i].update();
    flowers[i].display();
  }

  
}
