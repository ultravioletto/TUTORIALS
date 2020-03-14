boolean DRAW_STROKE = false;
color STROKE_COLOR = #000000;   // default color to all the strokes


IntList colors = new IntList();  // init a list that hold the palette colors


void setupColors() {
    // this this the color palette
  colors.append( #0000FF );  
  colors.append( #FFF3CE );
  colors.append( #3a006b );
  colors.append( #ff0058 );
  colors.append( #7a7a7a );
}



color getRandomColor() {

  
  int  randomIndex = (int)random(colors.size()); 
  color tmpColor = colors.get(randomIndex);  // now a random color  is choosen from the color list 
  return tmpColor;
}
