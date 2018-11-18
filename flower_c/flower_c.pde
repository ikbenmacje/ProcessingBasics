/**
  * flower_c
  *
  * Draw a flower by drawing three circles of petals. 
  * Each circle of petals is now a function. This funcion is called three times with different variables 
  * Each petal is an ellipse and rotated to match the angel of the position in the circle
  *
  */ 
  
// use an array of colors for colorpalette 
color[] colors = {color(73, 10, 61), color(189, 21, 80), color(233, 127, 2), color(248, 202, 0), color(138, 155, 15)};

// --> SETUP
void setup() {
  size(640, 480);     // set size of window
}


// --> DRAW
void draw() {

  background(colors[0]);  // draw background
  noStroke();             // do not draw outline

  pushMatrix();
  translate(width/2, height/2);
  
  // call functions three times once for every circle of petals
  drawLeaves(45, 25, 50, 90, colors[3]);
  drawLeaves(45, 25, 20, 50, colors[2]);
  drawLeaves(45, 15, 10, 25, colors[1]);
  
  popMatrix();
}

// function to draw a circle of petals
void drawLeaves(int step, int rad, int sizeX, int sizeY, color col){

  for (int i=0; i<360; i += step)
  {
    pushMatrix();
    float x = (rad * sin(radians(i)));
    float y = (rad * cos(radians(i)));
    translate(x, y);
    rotate(-radians(i));
    fill(col);
    ellipse(0, 0, sizeX, sizeY);
    popMatrix();
  }
}
