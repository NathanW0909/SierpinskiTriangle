void setup() {
  size(600, 600);
  background(255);
  sierpinski(100, 500, 400);
}

void draw() {
}

void sierpinski(int x, int y, int len) {
  if (len <= 20) {
    triangle(x, y, x + len, y, x + len / 2, y - len);
  } else {
    sierpinski(x, y, len / 2);
    sierpinski(x + len / 2, y, len / 2);
    sierpinski(x + len / 4, y - len / 2, len / 2);
  }
}
