


ArrayList<Spring> springs = new ArrayList<Spring>();


void setup() {
  size(600, 360);
  noStroke();
  
  colorMode(HSB,360,100,100);
  
 
  
  for ( int i = 0; i < width ; i+=30){
  
    Spring mySpring = new Spring(i,0,25,height);
    
    springs.add(mySpring);
  
  }
 
  surface.setLocation(0, 0);
}

void draw() {
  background(0);
  
  for ( int i = 0; i < springs.size(); i++){
  Spring s = springs.get(i);
  
  s.updateSpring();
  s.drawSpring();
  s.checkMouseCollision();
  
  }
  

}



void mousePressed() {
}
