// --> IMPORTS



// --> SETUP
void setup(){
  size(480,640);
 
  
}



// --> DRAW
void draw(){
  background(255);
  
  float x1 = map(mouseX,0,width,100,350);
  noStroke();
  fill(255,0,0);
  rect(0,0,x1,150);
  
  float y1 = map(mouseY,0,height,100,350);
  noStroke();
  fill(255,255,0);
  rect(150,250,50,y1);
  
  pushMatrix();
  float r1 = map(mouseX,0,width,0,TWO_PI);
  float y2 = map(mouseY,0,height,150,650);
  noStroke();
  fill(0,0,255);
  translate(400,400);
  rotate(r1);
  rect(0,0,80,y2);
  popMatrix();
  
  
  stroke(0);
  strokeWeight(8);
  line(150,0,150,height);
  
  strokeWeight(4);
  line(200,0,200,height);
  
  float x2 = map(mouseX,0,width,2,20);
  strokeWeight(x2);
  line(0,250,width,250);
  
  strokeWeight(4);
  line(0,400,width,400);
  
  strokeWeight(8);
  line(0,550,width,550);
  
  strokeWeight(4);
  line(400,0,400,height);
  
}
