float x; //centered x
float y; //centered y
float size=350;
float frec1= 0; //use this to manipulate oculus shapes
float frec2= 0; //use this to manipulate oculus shapes
float thickness= size*0.004;
float cc=0; //counter for Sin and Cos functions
Oculus figura;

void setup() {
  size(1920, 1080);
  frameRate(60);
  background(0);
  noStroke();
  x= width/2;
  y= height/2;
  figura= new Oculus(true);
  figura.stars(700);
}

void draw() {
  //background(0);
  
  //figura.draw(); //try without background() function
  
  //-----------------------------------------------------------------------------------------------------------------
  // eye2() examples:
  figura.eye2(x,y,cc*10,cc*0.05); // try with oculus on true, and NO background()
  //figura.eye2(); // try with oculus on true
  
  
  //-----------------------------------------------------------------------------------------------------------------
  //draw() examples:
  //figura.draw(x, y, size, 0.1, sin(cc*0.02)*0.2, 0.05, 10, 7); // try with oculus on true
  //figura.draw(x, y, size, 0.1, cc*0.0001, 0.1, 35, 7); // try with oculus on true
  
  //-----------------------------------------------------------------------------------------------------------------
  //circle() examples:
  //figura.circle(x,y, (sin(cc*0.05)*300)+200, 0.06, sin(cc*0.1)*0.5, 0.01, 0.1); // try with oculus on false
  //figura.circle(x, y, 350, 0.1, 0.2, sin(cc*0.5)*0.1, 0.5); // try with oculus on true
  //figura.circle(x, y, size, 0.01, map(cos(cc*0.2), -1, 1, 0.01, 0.015), 0.004 , 0.6); // try with oculus on false
  cc+=0.1;
}
