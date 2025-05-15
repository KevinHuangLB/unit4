// Kevin Huang
// Apr. 2
// 2-3

color beige = #fdf0d5;
color red = #c1121f;
color green = #0EAA07;
color black = #000000;
color blue = #669bbc;
color skyBlue = #62D6FF;
color darkWhite = #CBCBCB;
color white = #FFFFFF;
color orange = #F5983B;
color sheepWhite = #f6f6da;
color sheepWhiteDark = #A0A09E;
color barnWhite = #D1D1D1;
color barnWhiteDark = #555555;

color[] colors = {#C62828, #F9A825, #43A047, #29B6F6, #F5F5F5, #8D6E63, #FB8C00, #FDD835, #90A4AE,
  #7CB342, #F48FB1, #1976D2, #D84315, #ECEFF1, #64B5F6, #BA68C8};
color[] colorsDark = {#9E1E1E, #C17F1D, #2F7333, #1E90C2, #BDBDBD, #5D4840, #C76F00, #C6A100, #607D8B, #57822F, #B76A84, #1258A1, #A3330F, #B0B3B5, #4C8FC3, #8B4E96};

void setup() {
  size(800, 600);
  background(white);
  fill(green);
  rect(0, 200, 800, 400);
  fill(skyBlue);
  rect(0, 0, 800, 200);

  for (int i = int(random(172,180)); i < 540; i += 60) {
    for (int j = int(random(40,48)); j < 730; j+= 80) {
      int random = int(random(10));
        if (random < 2) barn(j,i,.35);
        if (random > 2 && random < 6) chicken(j,i,.145);
        if (random > 6) sheep(j,i,.20);
    }
  }
}
