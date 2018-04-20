//Below we define a class called car
//A class is the definition of an object. We use it in the other tab to create our car objects.
//It contains variables and functions that each instance of the class have.

class car {
  color wheelColor;  //here we define all the variables each car will need
  color bodyColor;
  float x;
  float y;
  float speed;
  float sizeX;
  float sizeY;
  
  car(color wc, color bc, float X, float Y){  //here we define the constructor.
    wheelColor = wc;                          //this is the function that will create a new car, 
    bodyColor = bc;                           //and initialize with values that we pass in 
    x = X;
    y = Y;
    speed = 0;
    sizeX = 100;
    sizeY = 50;
  }
  
  void go(float s){  //this function sets the speed of the car.
    speed = s;
  }
  
  void stop(){
    speed = 0;
  }
  
  void update(){  //increment the car's x position by the speed
     x+=speed; 
  }
  void display(){  //print out different shapes to show the car
    stroke(0);
    fill(bodyColor);
    rect(x, y, sizeX, sizeY);
    fill(wheelColor);
    ellipse(x, y+sizeY, 10, 10);
    ellipse(x+sizeX, y+sizeY, 10, 10);
  }
  
  
}