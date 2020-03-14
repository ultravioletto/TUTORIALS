class Spring {
  // Spring simulation constants
  float M;   // Mass
  float K;   // Spring constant
  float D;  // Damping
  float R;   // Rest position

  // Spring simulation variables
  float ps;    // Position
  float vs;  // Velocity
  float as;    // Acceleration
  float f;     // Force

  // rect viz variable
  int x;               // x position
  int y;              // y position
  int w;             // rect width
  int h;             // rect height

  Spring(int x, int y, int w, int h) {

    this.x = x ;   
    this.y = y;
    this.w = w;
    this.h = h;

    M = 0.4;   // Mass
    K = 0.1;   // Spring constant
    D = 0.92;  // Damping
    R = 359;   // Rest position

    ps = R;    // Position
    vs = 0.0;  // Velocity
    as = 0;    // Acceleration
    f = 0;     // Force
  }


  void drawSpring() {
    fill(ps, 100, 100);
    rect(x, y, w, h );
  }


  void updateSpring() {
    // Update the spring position
    f = -K * (ps - R);    // f=-ky
    as = f / M;           // Set the acceleration, f=ma == a=f/m
    vs = D * (vs + as);   // Set the velocity
    ps = ps + vs;         // Updated position

    if (abs(vs) < 0.1) {
      vs = 0.0;
    }
  }

  void checkMouseCollision() {

    if ( mouseX > x && mouseX < x+w && mouseY > y && mouseY < y +h) {
      ps = 100;
    }
  }
}
