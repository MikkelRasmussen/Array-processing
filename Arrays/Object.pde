class Object {

  PVector location;
  int radius;

  Object(int x, int y, int r) {

    location = new PVector(x, y);
    radius = r;
  }

  void update() {
    display();
  }

  void display() {

    fill(50);
    ellipse(location.x, location.y, radius, radius);
  }
  
  boolean checkIfInside() {
    float distX = mouseX - location.x;
    float distY = mouseY - location.y;
    float distance = sqrt( (distX*distX) + (distY*distY) );
    if (distance <= radius) {
      return true;
    }
    return false;
  }
}
