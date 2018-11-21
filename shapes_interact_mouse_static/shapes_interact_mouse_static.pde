 int xpos = 300;
float appel = 10.9;
String hku = "dit is de hku";

// --> SETUP
void setup() {
  size(480, 640);
}

// --> DRAW
void draw() {
  background(255);
  
  xpos = mouseX;

  fill(255, 0, 0);
  rect(xpos, 400, 100, 100);

  strokeWeight(4);
  line(xpos, 0, xpos, height);
}
