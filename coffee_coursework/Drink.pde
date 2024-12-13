//inspiration for cup design + steam animations by Mr Johnson Computing:
//https://youtu.be/mGd23rYdq2Y?si=ITqY2xDKYganA6lr

class Drink {
  PVector pos;
  int xPos, yPos, cupW, cupH;
  String type;
  int jumpRate;
  int count = 0;
  float initialx, initialy;
  boolean up = true;

  Drink(PVector pos, String type, int jumpRate) {
    this.pos = pos;
    this.type = type;
    this.jumpRate = jumpRate;

    cupW = 80;
    cupH = 85;

    this.initialx = this.pos.x;
    this.initialy = this.pos.y;
  }

  void draw() {
    ellipseMode(CENTER);
    rectMode(CENTER);
    stroke(0, 90);

    if (type != "cappuchino") {
      fill(cup_colour);
      ellipse(pos.x + cupW / 2, pos.y, 55, cupH - 20);    //cup handle 1
      fill(bg_colour);
      ellipse(pos.x + cupW / 2, pos.y, 30, cupH - 35);    //cup handle 2
    }

    if (type == "cappuchino") {
      fill(capp_colour);
    } else {
      fill(cup_colour);
    }
    rect(pos.x, pos.y, cupW, cupH);          //cup body
    ellipse(pos.x, pos.y - 45, cupW, 45);    //cup mouth
    ellipse(pos.x, pos.y + 40, cupW, 35);    //cup bottom
    noStroke();
    rect(pos.x, pos.y + 30, cupW - 1, 20);   //small rect to cover outlines
    stroke(0, 70);

    //handling types of drinks by colour
    if (type == "black") {
      fill(75, 51, 2, 250);
    } else if (type == "herbal tea") {
      fill(187, 211, 150, 240);
    } else if (type == "chai") {
      fill(209, 153, 60, 300);
    } else if (type == "instant coffee") {
      fill(175, 141, 87);
    } else if (type == "cappuchino") {
      fill(209, 164, 74);
    }

    ellipse(pos.x, pos.y - 40, cupW - 10, 40);

    //handling jumping variable
    if (jumping) {
      if (up) {
        this.pos.y -= jumpRate * 0.65;
        count += 1;

        if (count >= 10 ) {
          up = false;
          count = 0;
        }
      } else {
        this.pos.y += jumpRate * 0.65;
        count += 1;
        if (count >= 10) {
          up = true;
          count = 0;
        }
      }

      //set back to original y position when spacebar is pressed again
      if (jumping == false) {
        this.pos.y = initialy;
      }
    }
  }

  void mouseMoved() {
    if ((mouseX > this.pos.x) && (mouseY > this.pos.y) && (mouseX < this.pos.x+ cupW) && (mouseY < this.pos.y+cupH)) {
      rect(width / 2, height / 2, 70, 70);
      text(this.type, 70, 70);
    }
  }
}
