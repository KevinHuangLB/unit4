void barn(int x, int y, float s){
  pushMatrix();
  translate(x,y);
  scale(s);
  
  barnHouse();
  barnLines();
  
  popMatrix();
}
void barnHouse(){
  int barnColor = int(random(16));
  println(barnColor);
  fill(colors[barnColor]);
  stroke(barnWhiteDark);
  strokeWeight(6);
  rect(0,0,200,200);
  triangle(-30,10,100,-80,230,10);
  
  int i = 15;
  while(i < 200){
    stroke(colorsDark[barnColor]);
    line(6,i,194,i);
    i += 15;
  }
  
    fill(white);
  circle(100,-20,40);
  stroke(colors[barnColor]);
  strokeWeight(5);
  line(100,-40,100,0);
  line(80,-20,120,-20);
}
void barnLines(){
  noFill();
  stroke(white);
  line(50,80,150,80);
  line(50,80,50,194);
  line(150,80,150,194);
  line(50,80,150,194);
  line(150,80,50,194);
  line(50,194,150,194);
  
  
}
