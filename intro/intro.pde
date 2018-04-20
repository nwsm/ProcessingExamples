//this file draws an ellipse, a rectangle, and a line

void setup() {
  //the setup() function gets executed once, when you run the program
  
  size(500,500); //set the size of the canvas
  background(255); //set the color of the background. 0==black, 255=white
  
  
  stroke(#FF0000);  //line color red. Hex color info: https://htmlcolorcodes.com/
  strokeWeight(3);  //line weight 3 pixels
  fill(#3300FF);    //fill color blue 
  rect(50,100,25,75); //draw a rectangle with width 25 and height 75, with upper-left corner at (50,100)
  
  stroke(#000044);
  strokeWeight(10);
  fill(#333333);
  ellipse(375, 120, 80, 250);  //draw at ellipse at (80,250) with x and y radius 
  
  stroke(0);
  strokeWeight(5);
  
  float x1=getNumber(width);    //define 4 variables for x and y positions of two points    
  float y1=getNumber(height);   //using the getNumber() function that we define below to get random numbers
  float x2=getNumber(width);
  float y2=getNumber(height);
  
  line(x1,y1,x2,y2); //draw a line from (x1,y1) to (x2,y2)
}

float getNumber(int x) {  //this function takes in an integer and returns a float
  
 return random(x); //random(x) gives a psuedo-random number between 0 and x
 
}