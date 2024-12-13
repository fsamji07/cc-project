void keyPressed() {
  //for actions of all drinks

  //jumping based on the feeling upon drinking the drink
  if (key == ' ') {
    if (jumping == false) {
      jumping = true;
    }
    else {
      jumping = false;
    }
  }
}

//void mouseMoved() {
//  if ((mouseX > this.pos.x) && (mouseY > this.pos.y) && (mouseX < this.pos.x+ rectW) && (mouseY < this.pos.y+rectH)) {
//  rect(width / 2, height / 2, 70, 70);
//    text(this.type);
//  }
//}
