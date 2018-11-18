/**
  * flower_a
  *
  * Draw a flower by drawing three circles of petals 
  * with three for loops. Each petal is an circle
  *
  */  


// use an array of colors for colorpalette
color[] colors = {color(73, 10, 61), color(189, 21, 80), color(233, 127, 2), color(248, 202, 0), color(138, 155, 15)};

// --> SETUP
void setup() {
  size(640, 480);      // set size of window
}



// --> DRAW
void draw() {

  background(colors[0]);  // draw background
  noStroke();             // do not draw outline

  pushMatrix();
  translate(width/2, height/2); // set origin point to middle of the screen

  float step = 45;    // every step is 45 degrees
  float rad = 35;     // radius of the cirlce

  // First for loop for the most outer petals
  for (int i=0; i<360; i += step)
  {
    float x = rad * sin(radians(i));
    float y = rad * cos(radians(i));
    fill(colors[3]);
    ellipse(x, y, 70, 80);
  }

  step = 45;
  rad = 35;
  // Second for loop for the middle petals
  for (int i=0; i<360; i += step)
  {
    float x = rad * sin(radians(i));
    float y = rad * cos(radians(i));
    fill(colors[2]);
    ellipse(x, y, 40, 40);
  }

  
  step = 45;
  rad = 20;
  // Third for loop for the iner petals
  for (int i=0; i<360; i += step)
  {
    float x = rad * sin(radians(i));
    float y = rad * cos(radians(i));
    fill(colors[1]);
    ellipse(x, y, 25, 25);
  }
  


  popMatrix();
}
