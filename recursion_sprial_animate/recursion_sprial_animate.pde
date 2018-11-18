/**
 * Recursion_spiral_animated
 * 
 * Using recursion means that you create a function that calls itself.
 * It is important to program an escape condition. Otherwise you create
 * an endless loop.
 */

// Array used as a color palette 
color[] colors = {color(73, 10, 61), color(189, 21, 80), color(233, 127, 2), color(248, 202, 0), color(138, 155, 15)};
int c = 0;
float a =0;
float count = 0;
int dir = 1;

// Array used as a color palette 
void setup() {
  size(800, 600);    // set size of the sketch
  noStroke();        // do not draw a outline
}

void draw() {
  background(0);
  
  // uncomment this and comment background() to get a trailing effect.
  //fill(0,5);
  //rect(0,0,width,height);

  pushMatrix();
  translate(width/2, height/2);
  // rotate the spiral
  rotate(a);
  // call the recursion function
  drawRecursive(0, 0, 0);
  popMatrix();

  // increment the rotation angle
  a += 0.05;
  // increment the counter
  count += dir * 0.3;
  
  // change the direction when count is more then 100 or less then -1
  if (count > 100 || count < -1) {
    dir *= -1;
  }
}


// Recursion function
void drawRecursive(int x, int y, int level) {

  float r = level * 4;      // radius of circle
  float a = level * 0.35;   // rotation angle
  int   s = level * 1;      // size of circle


  // calclulate color index using modulo
  c = c%5;
  
  // Calculate position of ellipse
  float xs = x + r * sin(a);
  float ys = y + r * cos(a);

  // draw the ellipse
  fill(colors[c], 200);
  ellipse(xs, ys, s, s);

  // do the recursive part
  if (level < int(count)) {
    level = level +1;
    c += 1;
    drawRecursive(x, y, level);
  }
}
