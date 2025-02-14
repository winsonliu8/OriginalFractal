public void setup() {
  size (400, 400);
  ellipseMode(CENTER);
}

public void draw() {
  background (200);
  fill (#64F273);
  myFractal (200, 300, 200);
}

public void myFractal (float x, float y, float siz) {
  ellipse (x, y, siz, siz);
  if (siz > 5){ //if siz <= 10 no recurison (base case)
    myFractal (x-siz/1.5, y, siz*0.5); //recursive calls
    fill (#79F086); 
    myFractal (x+siz/1.5, y, siz*0.5); 
    fill (#93F29D); 
    myFractal (x, y-siz/1.5, siz*0.5); 
    fill (#B1F0B7);
  }
   ellipse (x, y, siz * 0.6, siz * 0.5);
}
