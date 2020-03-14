///////////////////////////////////////////////////////////////
//
//  Base object 
//    
//  x -> position x
//  y -> position y
//  w -> width 
//  h -> height
//  fillColor -> color that fill the rect
//  strokeColor -> color that stroke the rect
//
///////////////////////////////////////////////////////////////


class Base {

  int x, y, w, h;
  color fillColor, strokeColor;



  Base(int x, int y, int w, int h, color fillColor, color strokeColor) {

    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;

    this.fillColor = fillColor;
    this.strokeColor =  strokeColor;
  }

  void show() {
    if (DRAW_STROKE) {
      noStroke();
    } else {
      stroke(strokeColor);
    }      
    fill(fillColor);
    rect(x, y, w, h);
  }
}
