ArrayList<Object> ObjectArrayList = new ArrayList<Object>();

Object[] ObjectArray = new Object[10];

void setup() {
  size(800, 800);
  
  // Array[]
  for (int i = 0; i < ObjectArray.length; i++) {
    ObjectArray[i] = new Object(200, 70*(i+1), 25);
  }
  
  
}

void draw(){
  background(255);
  
  for (int i = 0; i < ObjectArray.length; i++) {
    ObjectArray[i].update(); 
  }
}


void mouseClicked(){
  
  //Array
  for (int i = 0; i < ObjectArray.length; i++) {
    
  }
  
}
