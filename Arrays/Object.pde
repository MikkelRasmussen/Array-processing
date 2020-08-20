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
  
  void display(){
    
    fill(50);
    ellipse(location.x, location.y, radius, radius);
    
  }
  
  boolean checkIfInside(){
    if(mouseX > location.x && mouseX < location.x + radius && mouseY > location.y && mouseY < location.y + radius){
      return true;
    }else {
      return false;
    }
  }
  
  
}
