/**
  * flower_d
  *
  * Draw a flower by using a class
  * The whole flower is now drawn by a single function of an object. 
  * Each petal is an ellipse and rotated to match the angel of the position in the circle
  *
  */ 
  
// use an array of colors for colorpalette   
color[] colors = {color(73, 10, 61), color(189, 21, 80), color(233, 127, 2), color(248, 202, 0), color(138, 155, 15)};

// declare you want to make an flower object
Flower flower;

// --> SETUP
void setup() {
  size(640, 480);  // set size of window
  
  // create the declared object with the right parameters
  flower = new Flower(new PVector(width/2,height/2));
}



// --> DRAW
void draw() {

  background(colors[0]);  // draw background
  noStroke();             // do not draw outline

  // Display the flower
  flower.update();
  flower.display();

  
}
