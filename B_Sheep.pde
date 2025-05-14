void sheep(int x, int y, float s) {
  pushMatrix();
  translate(x, y);
  scale(s);

  sheepLegs();
  sheepBody();
  sheepHead();

  popMatrix();
}

void sheepBody() {
  fill(sheepWhite);
  strokeWeight(3);
  stroke(sheepWhiteDark);
  int i = 0;
  float woolNum = random(200, 250);
  while (i < woolNum) {
    int pos = int(random(1, 16));
    switch(pos) {
    case 1:
      square(random(-100,-50), random(-100,-50), random(50, 60));
      break;
    case 2:
      square(random(-50,0), random(-100,-50), random(50, 60));
      break;
    case 3:
      square(random(0,50), random(-100,-50), random(50, 60));
      break;
    case 4:
      square(random(50,100), random(-100,-50), random(50, 60));
      break;
    case 5:
      square(random(100,150), random(-100,-50), random(50, 60));
      break;
    case 6:
      square(random(-100,-50), random(-50,0), random(50, 60));
      break;
    case 7:
      square(random(-50,0), random(-50,0), random(50, 60));
      break;
    case 8:
      square(random(0,50), random(-50,0), random(50, 60));
      break;
    case 9:
      square(random(50,100), random(-50,0), random(50, 60));
      break;
    case 10:
      square(random(100,150), random(-50,0), random(50, 60));
      break;
    case 11:
      square(random(-100,-50), random(0,50), random(50, 60));
      break;
    case 12:
      square(random(-50,0), random(0,50), random(50, 60));
      break;
    case 13:
      square(random(0,50), random(0,50), random(50, 60));
      break;
    case 14:
      square(random(50,100), random(0,50), random(50, 60));
      break;
    case 15:
      square(random(100,150), random(0,50), random(50, 60));
      break;
    }
    i++;
  }
}
void sheepHead(){
  stroke(170);
  strokeWeight(5);
  fill(sheepWhite);
  rect(160,-125,125,125);
  circle(250,-85,30);
  fill(0);
  stroke(0);
  strokeWeight(3);
  circle(250,-85,10);
}
void sheepLegs(){
  stroke(170);
  strokeWeight(4);
  fill(sheepWhite);
  rect(-50,50,30,100);
  fill(sheepWhiteDark);
  ellipse(-35,150,40,30);
  fill(sheepWhite);
  rect(120,50,30,100);
  fill(sheepWhiteDark);
  ellipse(135,150,40,30);
}
