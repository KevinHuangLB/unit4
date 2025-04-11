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
  chicken(300,200);
 
}
void chicken(int x, int y){
  pushMatrix();
  translate(x,y);
  
  body();
  leg(50,100);
  leg(150,100);
  face(200);
  
  
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
void face(int size){
  stroke(black);
  strokeWeight(3);
  rect(150,50 - size,size,size);
  // beak
  fill(orange);
  triangle(150 + size, 50 - size / 2, 150 + size + size / 3, 50 - size / 2, 150 + size, 50);
  
}
