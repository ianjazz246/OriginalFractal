int iters = 1;
int curveIterations = 11;
color initialClr = color(102,204,255);
color finalClr = color(255,153,204);
enum DIR {
  UP, DOWN, LEFT, RIGHT
}

void setup() {
  size(500, 500);
  //curve(5, 250, 250, 5);
}

void draw() {
  background(220, 220, 220);
  curve(curveIterations, 400, 200, 6, color(0, 0, 0));
  /*if (iters < 100) {
    pushMatrix();
    curve(iters++, 250, 250, 25 - iters/4); //<>//
    popMatrix();
  }*/
}

void curve(int n, float x, float y, float size, int clr) {
  if (n <= 0) {
    //stroke(lerpColor(initialClr, finalClr, (float)(x) / 400));
    //stroke(finalClr);
    line(x, y, x+size, y);
    line(x+size, y, x+size, y+size);
    
  }
  else {
    /*
    line(x, y, x, y-size);
    line(x, y-size, x+size, y-size);
    translate(x+size,y-size);
    //translate(size, 0);
    rotate((float)(Math.PI)/2.1);
    //translate(-size, 0);
    curve(n-1, 0, 0, size);*/
    
    translate(x, y);
    rotate((float)(Math.PI/2));
    
    //translate(-x, -y);
    
    //stroke(clr);
    //clr = lerpColor(initialClr, finalClr, (float)(n) / curveIterations);
    //clr = color((int)(255 * Math.random()),(int)(255 * Math.random()),(int)(255 * Math.random()));//1 << 16 + 1 << 8 + 1;
    curve(n-1, 0, 0, size, clr);
    translate(size/2, size/2);
    rotate(-(float)(Math.PI/2));
    
    //translate(-size/2, -size/2);
    
    //fill(clr);
    curve(n-1, 0, 0, size, clr);
    
    
  }
}
