// Kevin Huang
// Apr. 2
// 2-3

color beige = #fdf0d5;
color red = #c1121f;
color black = #000000;
color blue = #669bbc;
color darkWhite = #CBCBCB;
color white = #FFFFFF;
color orange = #F5983B;


void setup() {
  size(800, 600);
  background(white);
  int i = 0;
  int chickenX = 25;
  int chickenY = 50;
  while (i < 12) {
    chicken(chickenX, chickenY, 0.33333);
    chickenX += 200;
    i++;
    if (chickenX > 700) {
      chickenY += 200;
      chickenX = 25;
    }
  }
}
void chicken(int x, int y, float s) {
  pushMatrix();
  translate(x, y);
  scale(s);

  body();
  leg(50, 100);
  leg(150, 100);
  face();


  popMatrix();
}
void body() {
  fill(229, random(142, 194), random(28,148));
  stroke(black);
  strokeWeight(3);
  rect(0, 0, 200, 200);
}
void leg(int x, int y) {
  strokeWeight(10);
  stroke(orange);
  line(x, 200, x, 200 + y);
}
void face() {
  stroke(black);
  strokeWeight(3);
  rect(150, -150, 200, 200);
  // beak
  fill(orange);
  float ranBeak = random(50,100);
  triangle(350, 50, 350 + ranBeak,50 - ranBeak, 350, 50 - ranBeak);
  // eye
  fill(white);
  int ranSize = int(random(25,60));
  rect(290, -80,ranSize,ranSize);
  fill(black);
  rect(290 + ranSize / 4, -80 + ranSize / 4, ranSize / 2, ranSize / 2);
}
