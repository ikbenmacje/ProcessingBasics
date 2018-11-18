class Flower {

  // --> VARS
  PVector pos;
  float angle = 0;

  // --> CONSTRUCTOR
  Flower(PVector _pos) {
    pos = _pos.copy();
  }


  // --> METHODS
  void update(){
    angle += 0.01;
  }
  
  void display() {
    pushMatrix();
    translate(pos.x,pos.y);
    rotate(angle);
    
    drawLeaves(45, 25, 50, 90, colors[3]);
    drawLeaves(45, 25, 20, 50, colors[2]);
    drawLeaves(45, 15, 10, 25, colors[1]);
    
    popMatrix();
  }

  void drawLeaves(int step, int rad, int sizeX, int sizeY, color col) {

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
}
