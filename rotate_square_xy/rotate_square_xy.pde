

void setup(){
  size(800,600);
  rectMode(CENTER);
  colorMode(HSB);
}



void draw(){
  // step 0
  //background(255);
  
  // step 1
  rectMode(CORNER);
  fill(255,10);
  rect(0,0,width,height);
  
  // step 2
  //float a = map(mouseX,0,width,-PI,PI);
  
  // step3 
  float sp = dist(mouseX,mouseY,pmouseX,pmouseY);
  
  // step 4
  float si = map(sp,0,60,50,200);
  
  // step 5
  int h = int(map(sp,0,60,100,160));
  
  noStroke();
  rectMode(CENTER);
  translate(width/2,height/2);
  float a = atan2(mouseY-height/2, mouseX-width/2);
  rotate(a);
  
  fill(h,360,360);
  rect(0,0,si,si);
}
