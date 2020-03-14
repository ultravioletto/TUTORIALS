///////////////////////////////////////////////////////////////
//
//  Circle object 
//    
//  x -> position x
//  y -> position y
//  diameter -> the circle diameter 
//  fillColor -> color that fill the cirlce
//  strokeColor -> color that stroke the circle
//
///////////////////////////////////////////////////////////////


class Circle extends Base {
  int diameter;

  Circle(int x, int y, int w, int h, color fillColor, color strokeColor ) {
    super( x, y, w, h, fillColor, strokeColor);

    diameter = min(w, h);  /// just in case if the tiles aren't a perfect square, choose as diamter the min value
  }


  void show() {
 if (DRAW_STROKE) {
      noStroke();
    } else {
      stroke(strokeColor);
    }
    fill(fillColor);
    ellipse(x, y, diameter, diameter);
  }
}


///////////////////////////////////////////////////////////////
//
//  HalfCircle object 
//    
//  x -> position x
//  y -> position y
//  rotation -> how many radians the 2 halfs circles are rotated
//  diameter -> the arc diameter 
//  fillColor -> color that fill the first half arc
//  fillColor2 -> color that fill the second half arc
//  strokeColor -> color that stroke the half arc
//
///////////////////////////////////////////////////////////////



class HalfCircle extends Base {

  float rotation;
  color fillColor2;
  int diameter;

  HalfCircle(int x, int y, int w, int h, color fillColor, color fillColor2, color strokeColor) {
    super( x, y, w, h, fillColor, strokeColor);
    rotation = QUARTER_PI * (int)random(8);    // choose a random degree to rotate the arc 
    this.fillColor2 = fillColor2;   
    diameter = min(w, h);        /// just in case if the tiles aren't a perfect square, choose as diamter the min value
  }


  void show() {
 if (DRAW_STROKE) {
      noStroke();
    } else {
      stroke(strokeColor);
    }    fill(fillColor);
    pushMatrix();
      translate(x, y);
      rotate(rotation);
      arc(0, 0, diameter, diameter, PI, TWO_PI, PIE);      /// draw first arc
      fill(fillColor2);
      arc(0, 0, diameter, diameter, 0, PI);                /// draw second arc
    popMatrix();
  }
}
