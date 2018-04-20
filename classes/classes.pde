import java.util.*;  //this imports the java util library, which contains the List class, which we use below

List<car> cars;   //a List is basically a resizable array. We will be making a List of cars. 
                  //The car object is defined in the next tab over

void setup() {
  size(500,500);
  cars = new ArrayList();
}

void draw() {
  background(255);
  for(car c : cars){   //do the following for all cars
    c.update();  //update the position of the car
    c.display(); //print out the shapes of the car
  }
  
  for (int i = cars.size() - 1; i >= 0; i--) { //iterate through the list of cars backwards
                                               //we have to iterate backwards so that we can safely remove the car later, if it has gone off the screen
    car c = cars.get(i);
    c.update();  //update the position of the car
    c.display(); //print out the shapes of the car
    
    
    if (c.x > width) {
      cars.remove(i);
    }
    
  }
}

void mousePressed() {
  car c = new car(randomColor(), randomColor(), mouseX, mouseY);
  c.go(random(3));
  cars.add(c);
}

color randomColor() {  
  return color(random(255), random(255), random(255));
}