

void setup(){
  size(800,600);
  rectMode(CENTER);
}



void draw(){
  //background(255);
  
  rectMode(CORNER);
  fill(255,10);
  rect(0,0,width,height);
  
  float a = map(mouseX,0,width,-PI,PI);
  
  
  rectMode(CENTER);
  translate(width/2,height/2);
  rotate(a);
  
  fill(0);
  rect(0,0,200,200);
}
