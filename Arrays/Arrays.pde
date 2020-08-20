int amount = 10;

//Array[]
Object[] ObjectArray = new Object[amount];

//ArrayList
ArrayList<Object> ObjectArrayList = new ArrayList<Object>();

void setup() {
  size(800, 800);

  //Array[]
  for (int i = 0; i < ObjectArray.length; i++) {
    ObjectArray[i] = new Object(200, 70*(i+1), 30);
  }

  //ArrayList
  for (int i = 0; i < amount; i++) {
    ObjectArrayList.add(new Object(600, 70*(i+1), 30));
  }
}

void draw() {
  textSize(20);
  background(255);

  //Viser alle objekter i Array ved brug af et for loop
  for (int i = 0; i < ObjectArray.length; i++) {
    ObjectArray[i].update();
  }

  //Viser alle objekter i ArrayList ved brug af et "for each" loop
  for (Object t : ObjectArrayList) {
    t.update();
  }

  //De to forskellige måder at finde helholvis længden eller størelsen på de to arrays
  text(ObjectArray.length, 185, 750);
  text(ObjectArrayList.size(), 585, 750);
}


void mouseClicked() {
  //Array
  //Hvis musen er clicket inden for en cirkel skal den fjerne cirkelen
  for (int i = 0; i < ObjectArray.length; i++) {
    if (ObjectArray[i].checkIfInside()) {  
      ObjectArray[i].location.x = -100;
    }
  }

  //Arraylist 
  //Men ved ArrayList kan man bare bruge remove() funktionen til at fjerny objektet helt.
  for (int i = ObjectArrayList.size()-1; i >= 0; i--) {
    if (ObjectArrayList.get(i).checkIfInside()) {
      ObjectArrayList.remove(i);
    }
  }
}
