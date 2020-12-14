// Hypotrochoid_03_001
// https://en.wikipedia.org/wiki/Hypotrochoid


int R = 200;
float r = 52.5;
int d = 40;
int click = 0;
float theta = 0;
float rot;
float dif = R - r;
float x1, y1, x2, y2;

void setup () {  
  size (800, 800);
  background (0);
  stroke (255);
  frameRate(1000);
  // translate(width/2,height/2);
}

void draw () {
  theta = radians(rot);
  x1 = dif * cos(theta) + d * cos((dif/r)*theta) + width/2;
  y1 = dif * sin(theta) + d * sin((dif/r)*theta) + height/2;
  rot = rot + 2.5;
  theta = radians(rot);
  x2 = dif * cos(theta) + d * cos((dif/r)*theta) + width /2;
  y2 = dif * sin(theta) + d * sin((dif/r)*theta) + height /2;  

  line(x1, y1, x2, y2);
  // rot = rot + .7; Dashed line
}

void keyTyped() {
println("typed " + int(key) + " " + keyCode);

if (int(key) == 115) { // s for save
save("Hypotrochoid_" + click + ".png");
println("Saved: " + "Hypotrochoid_" + click + ".png");
click ++;
}

if (int(key) == 120) {
exit(); // x to exit the program
}
}
