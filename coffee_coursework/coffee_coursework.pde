ArrayList<Drink> drinks = new ArrayList<Drink>();
boolean jumping = false;
color bg_colour = color(150, 140, 135);
color cup_colour = color(252, 246, 232);
color capp_colour = color(116, 68, 30);
Drink drink1, drink2, drink3, drink4, drink5, drink6, drink7, drink8, drink9;

void setup() {
  size(1200, 500);
  textSize(25);
  textAlign(CENTER);
  //testing pos
  //PVector pos = new PVector(50, 50);
  //PVector pos2 = new PVector(100, 50);
  //PVector pos3 = new PVector(150, 50);
  
  //test drink
  //drink1 = new Drink(new PVector(125, 120), "black", 1);        //pos, type, jumpRate)
  //drink2 = new Drink(new PVector(325, 120), "herbal tea", 3);
  //drink3 = new Drink(new PVector(525, 120), "chai", 5);
  
  //actual drinks:
  drink1 = new Drink(new PVector(120, 165), "instant coffee", 3); //mon
  drink2 = new Drink(new PVector(120, 365), "herbal tea", 1);
  drink3 = new Drink(new PVector(280, 165), "cappuchino", 3);     //tue
  drink4 = new Drink(new PVector(280, 365), "herbal tea", 2);     
  drink5 = new Drink(new PVector(440, 165), "black", 3);          //wed
  drink6 = new Drink(new PVector(600, 165), "chai", 5);           //thur
  drink7 = new Drink(new PVector(760, 165), "herbal tea", 3);     //fri
  drink8 = new Drink(new PVector(920, 165), "chai", 5);           //sat
  drink9 = new Drink(new PVector(1080, 165), "herbal tea", 5);          //sun
  
  //drinks.add(drink1);
  //drinks.add(drink2);
  //drinks.add(drink3);
}

void draw() {
  background(bg_colour);
  
  drink1.draw();
  drink2.draw();
  drink3.draw();
  drink4.draw();
  drink5.draw();
  drink6.draw();
  drink7.draw();
  drink8.draw();
  drink9.draw();
  
  fill(0);
  text("monday", 120, 60);
  text("tuesday", 280, 60);
  text("wednesday", 440, 60);
  text("thursday", 600, 60);
  text("friday", 760, 60);
  text("saturday", 920, 60);
  text("sunday", 1080, 60);
  
  //textSize(15);
  //textAlign(RIGHT);
  fill(255);
  text(" press space or hover :)", width - 150, height - 20);
  
  //drawing them automatically so i dont need so many pos variables - use an arraylist?
  //initialise drinks in setup() and then change pos here
  //update: just going to use literal values for now; moved .add to setup()
}


  
