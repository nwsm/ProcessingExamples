float circleX; //creating variables that can be accessed in both setup() and draw()
float circleY;
float incrementX;
float incrementY;

void setup() {
  size(750,250); 
  background(0);
  
  circleX = random(width); //initialize the values
  circleY = random(height);
  incrementX = random(-2,2); //set the x and y increment values to random numbers between -3 and 3
  incrementY = random(-2,2);
  
  stroke(#FF0000);
  strokeWeight(2);
  fill(255);
}

void draw() {  //draw() gets called once every 'frame'. There are usually 30-90 frames per second

  background(0); //redraw the background black
  
  ellipse(circleX, circleY, 25, 25); //draw the circle
  circleX += incrementX;  //add the increments to the circle's X and Y positions to move them
  circleY += incrementY;
  
  if(circleX<0)       //if the circle's X position goes below 0 (off the screen), set it to the far right
    circleX=width;
  if(circleX>width)   //if the circle's X position goes above the width of the screen, set it to the far left
    circleX=0;
    
  if(circleY<0)
    circleY=height;
  if(circleY>height)
    circleY=0;
    
}