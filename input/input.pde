int circleRadius = 50;

void setup() {
  size(500,500); 
  background(255);
}

void draw() {

}

void mousePressed() {
  
  fill(random(255), random(255), random(255));
  ellipse(mouseX,mouseY,50,50);
  
}

void keyPressed() {
  
  if(key==ENTER){
    background(255);
  } else if(key=='k') {
    background(0);
  }
  
}