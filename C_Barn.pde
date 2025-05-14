void barn(int x, int y, float s){
  pushMatrix();
  translate(x,y);
  scale(s);
  
  barnHouse();
  
  popMatrix();
}
void barnHouse(){
  fill(barnWhite);
  stroke(barnWhiteDark);
  rect(0,0,200,200);
}
