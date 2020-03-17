import processing.pdf.*;

boolean saveMe = true;

PImage img;

void setup() {
  size(480, 480);
  surface.setLocation(0, 0);
  img = loadImage("conte.png");
  img.loadPixels();
  noFill();
}
void draw() {
  background(0);
  // image(img, 0, 0);
  if ( saveMe == true ) {
    beginRecord(PDF, "filename.pdf");
  }
  for (int y = 0; y < height; y+=2) {
  beginShape();  
    for (int x = 0; x < width; x+=2) {
      int index = x + (y * width);
      color c = img.pixels[index];
      float bright = brightness(c);
      float offSet = map(bright, 0, 255, 0, 50);
      stroke(255);
      vertex(x, y + offSet);
     // point(x, y+offSet);
    }
    endShape();
  }
  
  if( saveMe == true){
  endRecord();
  saveMe = false;
  
  }

  //loadPixels();

  //for( int i = 0; i< pixels.length; i++){

  //  color c = color( random (255));
  //  pixels[i] = c;

  //}

  //updatePixels();
}
