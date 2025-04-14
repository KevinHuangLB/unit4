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


void setup(){
  size(800,600);  
}
void draw(){
  background(white);
  chicken(300,200,1);
 
}
void chicken(int x, int y, float s){
  pushMatrix();
  translate(x,y);
  scale(s);
  
  body();
  leg(50,100);
  leg(150,100);
  face();
  
  
  popMatrix();
}
void body(){
  fill(darkWhite);
  stroke(black);
  strokeWeight(3);
  rect(0,0,200,200);
}
void leg(int x, int y){
  strokeWeight(10);
  stroke(orange);
  line(x,200,x,200 + y);
}
void face(){
  stroke(black);
  strokeWeight(3);
  rect(150,-150,200,200);
  // beak
  fill(orange);
  triangle(350,50,425,-25,350,-25);
  // eye
  fill(white);
  rect(290,-80,30,30);
  fill(black);
  rect(297.5,-73.5,16,16);
  
}
