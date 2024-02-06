public void setup() {
  background(0);
  size(600, 600);
}
public void draw() {
  sierpinski(50, 550, 500);
}
public void sierpinski(int x, int y, int len) {
  if (len <= 20) {
    drawTriangle(x, y, len);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);  
    sierpinski(x+len/4, y-len/2*(int)sqrt(3), len/2);  
  }
}
public void drawTriangle(int x, int y, int len) {
  triangle(x, y, x + len, y, x + len/2, y - len * sqrt(3)/2);
}
