///////////////////////////////////////////////////////////////
//
//  Triangle object 
//    
//  x -> position x
//  y -> position y
//  w -> width 
//  h -> height
//  fillColor -> color that fill the triangle
//  strokeColor -> color that stroke the triangle
//
///////////////////////////////////////////////////////////////

class Triangle extends Base {

  int direction;
  float rotation;
  Triangle(int x, int y, int w, int h, color fillColor, color strokeColor ) {
    super( x, y, w, h, fillColor, strokeColor);

    direction = (int)random(4);   /// a random int number from 0 to 3 to choose the direction of the triangle
  }

  void show() {

    if (DRAW_STROKE) {
      noStroke();
    } else {
      stroke(strokeColor);
    }
    fill(fillColor);
    pushMatrix();
    translate(x, y);
    beginShape();
    switch (direction) {
    case 0:
      vertex(0, 0);      // upper left triangle
      vertex(w, 0);
      vertex(w, h);
      break;
    case 1:
      vertex(w, h);      // lower left triangle
      vertex(0, h);
      vertex(0, 0);
      break;
    case 2:
      vertex(0, 0);      // upper right triangle
      vertex(w, 0);
      vertex(0, h);
      break;
    case 3:
      vertex(w, 0);      // lower right triangle
      vertex(w, h);
      vertex(0, h);
      break;
    }
    endShape();
    popMatrix();
  }
}
