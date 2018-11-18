/*
    
 * This program allows you to draw using the mouse.
 * Press 's' to save your drawing 
 * Press 'd' to erase your drawing and start with a blank screen
 * 
 */

int c = 0;
color[] colors = {color(73, 10, 61), color(189, 21, 80), color(233, 127, 2), color(248, 202, 0), color(138, 155, 15)};

PImage img;


// setup function -- called once when the program begins
void setup() {

  // set the display window to size 800 x 600 pixels
  size(800, 600);


  img = loadImage("brush.png");
  background(255);
}


// draw function -- called continuously while the program is running
void draw() {


  // draw image according to current scale and mouse position
  if (mousePressed) {
    
    pushMatrix();
    translate(mouseX, mouseY);

    /* draw a brush at your mouse point while you are pressing 
     the left mouse button */
    pushStyle();
    tint(colors[c]);
    imageMode(CENTER);
    image(img, 0, 0, img.width/6, img.height/6);
    popStyle();
    popMatrix();
  }
}



void keyReleased() {
  if (key == 'd' || key == ' ') {
    background(255);
  }
  // save your drawing when you press keyboard 's'
  else if (key=='s') {
    saveFrame("frame###.jpg");
  } else if (key == '1') {
    c = 0;
  } else if (key == '2') {
    c = 1;
  } else if (key == '3') {
    c = 2;
  } else if (key == '4') {
    c = 3;
  } else if (key == '5') {
    c = 4;
  }
}
