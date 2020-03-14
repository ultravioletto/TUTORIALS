ArrayList<Base> tiles = new ArrayList<Base>(); // this is the rray containing all the tiles //<>//

int WIDTH = 100;  // constant for the width for the tiles
int HEIGHT = 100; // constant for the height for the tiles

void setup() {
  size(1000, 2000);

  surface.setLocation(0, 0); // set the window location at 0 - 0 of the main monitor

  setupColors();    // call the function that initialize the colors used in the visualization


// 2 nested arrays to display and init all the tiles as a grid
  for ( int y = 0; y < height; y += HEIGHT) {
    for ( int x = 0; x < width; x += WIDTH) {

      Base b = new Base(x, y, WIDTH, HEIGHT, getRandomColor(),STROKE_COLOR);
      tiles.add(b);        // add a base object, 

      Triangle s = new Triangle(x, y, WIDTH, HEIGHT, getRandomColor(),STROKE_COLOR);      
      if (random(1) > .5) tiles.add(s);       // 50 % chance to have a  object

      float mult = random(5) + 1;    // create a variable to add some randomness to the diameter of the circles

      Circle c = new Circle(x+WIDTH/2, y+HEIGHT/2, int(WIDTH/mult), int(HEIGHT/mult), getRandomColor(),STROKE_COLOR);
      if (random(1) > .5)  tiles.add(c);      // e 50 % chance to have a Circle object

      mult = random(5) + 1;

      HalfCircle hc = new HalfCircle(x+WIDTH/2, y+HEIGHT/2, int(WIDTH/mult), int(HEIGHT/mult), getRandomColor(), getRandomColor(),STROKE_COLOR);
      if (random(1) > .5) tiles.add(hc);      //  have 50 % chance to have a Circle object

    }
  }
}




void draw() {
  background(255);

  for (Base b : tiles) {
    b.show(); // show all the tiles
  }
}


void keyPressed() {
  
  
  if ( key == 's' || key == 'S') {
    save("saved/saved.png"); // save a screenshot of the viz
  }
}






void mousePressed() {
  setup();   /// while pressed re-init the visualization
}
