/**
 * Mirror a Camera Capture Frame
 * 
 * mirror an image from an attached Capture device. 
 */

import processing.video.*;

Capture cam;
PImage leftHalf;

void setup() {
  size(640, 480, P3D);

  String[] cameras = Capture.list();

  if (cameras == null) {
    println("Failed to retrieve the list of available cameras, will try the default...");
    cam = new Capture(this, 640, 480);
  } 
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    printArray(cameras);

    // The camera can be initialized directly using an element
    // from the array returned by list():
    cam = new Capture(this, cameras[0]);
    // Or, the settings can be defined based on the text in the list
    //cam = new Capture(this, 640, 480, "Built-in iSight", 30);

    // Start capturing the images from the camera
    cam.start();
  }

  // create image for left half of the webcam image
  leftHalf = createImage(cam.width/2, cam.height, RGB);
}

void draw() {
  if (cam.available() == true) {
    cam.read();
  }

  int x = cam.width/2;
  //copy left half of webcam image to leftHalf image
  leftHalf = cam.get(0, 0, cam.width/2, cam.height);

  //non Flipped image
  pushMatrix();
  image(leftHalf, 0, 0, width/2, height);
  popMatrix();

  // Fliped image
  pushMatrix();
  translate(width, 0);
  scale(-1, 1);
  image(leftHalf, 0, 0, width/2, height);
  popMatrix();
}


void keyPressed() {
  if (key == ' ' )
  {
    saveFrame("frame#######.png");
  }
}
