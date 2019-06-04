/*
  Designing a Mondriaan Painting
 */


void setup() {

  // Decide the size of your Canvas
  size(640, 480);
}

void draw() {
  // Decide the color of your Canvas
  background(255, 255, 255);

  // Use a number of black lines
  noFill();
  stroke(0);
  strokeWeight(6);
  line(20, 0, 20, height);

  // Draw a red square
  noStroke();
  fill(255, 0, 0);
  rect(400, 30, 200, 200);

  // Draw a blue square
  noStroke();
  fill(0, 0, 255);
  rect(150, 300, 140, 140);

  // Draw a yellow rectangle
  noStroke();
  fill(255, 255, 0);
  rect(75, 100, 80, 140);
}
