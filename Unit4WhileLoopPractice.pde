// CURVE
color black = #000000;
color lightBlue = #18DBEA;
color red = #EA181B;

size(1000, 1000);
background(255);
stroke(0);
strokeWeight(1);

rectMode(CENTER);

int x = 0;
int y = 1000;
int count = 0;

//while (x >= 0) {
//  line(600, y, x, 0);
//  println(x);
//  println(y);
//  x -= 10;
//  y -= 10;
//}

// concentric squares
while (y >= 0) {
  if (count % 3 == 0) {
    fill(black);
  } else if (count % 2 == 0) {
    fill(red);
  } else {
    fill(lightBlue);
  }

  rect(500, 500, y, y);
  y -= 8;
  count++;
}
