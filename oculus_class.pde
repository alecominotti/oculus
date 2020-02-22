class Oculus {  
  private float x= width/2;
  private float y= height/2;
  private float diametro=250;
  private float frec1= -0.1;
  private float frec2= -0.1;
  private float thickness= diametro*0.005;
  private float c= 1;
  private float c2;
  private float seno;
  private boolean vanish;


  Oculus (boolean van) {
    this.vanish= van;
  }

  boolean getVanish() {
    return this.vanish;
  }

  boolean setVanish(boolean val) {
    this.vanish = val;
    return this.vanish;
  }

  void eye() {  //don't use inside draw()
    for (int i=0; i<= 750; i++) {
      this.draw();
    }
  }

  void draw() { //default eye
    diametro=sin(c*0.1)*550;
    seno= sin(c);
    c2= map(seno, -1, 1, 1.3, 1.6);
    generateFigure(x, y, diametro, frec1, frec1/sin(c2), 50, thickness/(c*2));
    c+=0.01;
  }

  void draw(float x, float y, float size, float frec1, float frec2, float speed, int density, float thickness) {
    //diametro=size;
    //diametro=sin(c*0.2)*size;
    //seno= sin(c);
    //c2= map(seno, -1, 1, 1.3, 1.6);
    if (this.vanish) {
      generateFigure(x, y, size, frec1, frec2, density, thickness/(c));
    } else {
      generateFigure(x, y, size, frec1, frec2, density, thickness);
    }    
    c+=speed;
  }

  void circle() { //default circle, run with oculus on false
    this.circle(x, y, diametro, 0.01, 0.01, 0.04, 1);
  }

  void circle(float xPos, float yPos, float size, float frec1, float frec2, float thickness, float amplitude) {
    this.c=0;    
    for (int i=0; i<= 200; i++) {
      this.frec1=cos(c*frec1)*amplitude;
      this.frec2=cos(c*frec2)*amplitude;
      this.draw(xPos, yPos, size, this.frec1, this.frec2, 0.01, 5, size*thickness);
      this.c+=0.2;
    }
  }

  void eye2(float c2) {
    this.eye2(x, y, 300, c2*0.01);
  } 

  void eye2(float xPos, float yPos, float size, float amplitude) { //increment amplitude slowly for coolness
    this.circle(xPos, yPos, size, 0.01, 0.05, 0.005, amplitude);
  }

  private void generateFigure(float x, float y, float diametro, float frecuencia1, float frecuencia2, int density, float grosor) {
    fill(random(255), random(255), 255);
    float count= 0;
    float xSin;
    float yCon;
    for (int i=0; i<density; i++) {
      for (int j=0; j<density; j++) {
        xSin= sin(count*frecuencia1)*diametro;
        yCon= cos(count*frecuencia2)*diametro;
        ellipse(xSin + x, yCon + y, grosor, grosor);
        count+=1;
      }
    }
  }

  void stars(int cant) { // call it from setup
    fill(255);
    for (int i=0; i<cant; i++) {
      ellipse(random(width), random(height), random(0.3, 1.5), random(0.3, 1.5));
    }
  }
} 
