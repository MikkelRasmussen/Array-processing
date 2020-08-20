int amount = 10;

ArrayList<Object> ObjectArrayList = new ArrayList<Object>();

Object[] ObjectArray = new Object[amount];

void setup() {
  size(800, 800);

  // Array[]
  for (int i = 0; i < ObjectArray.length; i++) {
    ObjectArray[i] = new Object(200, 70*(i+1), 50);
  }

  //ArrayList
  for (int i = 0; i < amount; i++) {
    ObjectArrayList.add(new Object(600, 70*(i+1), 50));
  }
}

void draw() {
  background(255);

  for (int i = 0; i < ObjectArray.length; i++) {
    ObjectArray[i].update();
  }
  
  for(Object t: ObjectArrayList) {
    t.update();
  }
  
}


void mouseClicked() {
  println("Clicked");
  //Array
  for (int i = 0; i < ObjectArray.length; i++) {
    boolean isInside = ObjectArray[i].checkIfInside();
    if (isInside) {
      ObjectArray[i].location.x = -100;
    }
  }
  
  //Arraylist 
  for(Object t: ObjectArrayList) {
    boolean isInside = t.checkIfInside();
    if(isInside){
    ObjectArrayList.remove(t);
    }
  
}
