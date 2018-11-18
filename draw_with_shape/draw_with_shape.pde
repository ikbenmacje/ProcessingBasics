/**
 * draw_with_shape
 *
 * Make a drawinb by drawing a shape with your mouse.
 */


// is called only once
void setup() {

  // set the display window to size 500 x 500 pixels
  size(500, 500);

  // set the background colour to white
  background(255);

  // set the rectangle mode to draw from the centre with a specified radius
  //ellipseMode(RADIUS);
}



// is called every frame
void draw() {

  /* draw a rectangle at your mouse point while you are pressing 
   the left mouse button */

  if (mousePressed) {
    
    // calculate the "distance" between the mouse position THIS frame
    // and the mouse position of the last frame. 
    // The distance represents the speed of movement
    float d = dist(mouseX,mouseY,pmouseX,pmouseY);
    
    
    // draw a rectangle with a small random variation in size
    stroke(170); // set the stroke colour to a light grey
    fill(0, 150); // set the fill colour to black with transparency
    ellipse(mouseX, mouseY, d,d);
  }


  // save your drawing when you press keyboard 's'
  if (keyPressed == true && key=='s') {
    saveFrame("frae####.jpg");
  }

  // erase your drawing when you press keyboard 'r'
  if (keyPressed == true && key == 'd') {
    background(255);
  }
}
