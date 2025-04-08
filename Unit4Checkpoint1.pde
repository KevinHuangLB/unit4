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
  //leg();
  //leg();
  //face();
  
  
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
  
  
}
