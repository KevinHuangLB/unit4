// Kevin Huang
// Apr. 2
// 2-3

void setup(){
  size(800,600);
}
void draw(){
  face(200,100); // x,y
}
void face(int x, int y) {
  pushMatrix();
  translate(x,y);
  popMatrix();
  
}
