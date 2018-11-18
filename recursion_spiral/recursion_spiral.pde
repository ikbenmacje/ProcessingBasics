/**
 * Recursion_spiral
 * 
 * Using recursion means that you create a function that calls itself.
 * It is important to program an escape condition. Otherwise you create
 * an endless loop.
 */
 
// Array used as a color palette 
color[] colors = {color(73,10,61), color(189,21,80), color(233,127,2), color(248,202,0), color(138,155,15)};
int c = 0;

// Array used as a color palette 
void setup() {
  size(800, 600);    // set size of the sketch
  noStroke();        // do not draw a outline
  noLoop();          // do use loop run draw only one time
}

void draw() {
  background(0);    // draw a black background
    
  // call the recursion function
  drawRecursive(width/2, height/2, 0);

}

// Recursion function
void drawRecursive(int x, int y, int level) {
 
  float r = level * 6;      // calculate the radius of the spiral
  float a = level * 0.3;    // calculate the angle of the spiral
  
  blendMode(ADD);
  
  // loop through the colors
  c = c%5;
  
  pushMatrix();
  
  // calculate a point on a circle
  float xs = x + r * sin(a);
  float ys = y + r * cos(a);
  
  // draw ellipse
  fill(colors[c],200);
  ellipse(xs, ys, 20, 20);
  
  popMatrix();

  // when the level is les then 30 call the function again
  if (level < 30) {
    level = level +1;
    c += 1;
    drawRecursive(x, y, level);
  }
}
