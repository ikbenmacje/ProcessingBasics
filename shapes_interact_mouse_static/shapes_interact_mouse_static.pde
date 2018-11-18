// --> IMPORTS



// --> SETUP
void setup(){
  size(480,640);
 
  
}



// --> DRAW
void draw(){
  background(255);
  
  noStroke();
  fill(255,0,0);
  rect(0,0,150,150);
  
  noStroke();
  fill(255,255,0);
  rect(150,250,50,150);
  
  noStroke();
  fill(0,0,255);
  rect(400,400,80,150);
  
  
  stroke(0);
  strokeWeight(8);
  line(150,0,150,height);
  
  strokeWeight(4);
  line(200,0,200,height);
  
  strokeWeight(4);
  line(0,250,width,250);
  
  strokeWeight(4);
  line(0,400,width,400);
  
  strokeWeight(8);
  line(0,550,width,550);
  
  strokeWeight(4);
  line(400,0,400,height);
  
}
