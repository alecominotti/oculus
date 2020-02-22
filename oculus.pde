float x; //centered x
float y; //centered y
float cc=0; //counter for variations
Oculus figure;

void setup() {
  size(1920, 1080);
  background(0);
  noStroke();
  x= width/2;
  y= height/2;
  figure= new Oculus(false);
  figure.stars(700);

}

void draw() {
  background(0); 
  figure.circle(x,y, (sin(cc*0.05)*300)+200, 0.06, sin(cc*0.1)*0.5, 0.01, 0.1);
  cc+=0.1;
}
