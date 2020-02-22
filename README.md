# oculus :black_circle:

<div align="center"> ![Oculus](https://github.com/alecominotti/oculus/blob/master/eye.gif?raw=true) </div>

The Oculus is a class that lets you create and animate cool shapes. 
It draws ellipses on the canvas with the help of the popular sin() and cos() functions.

**You need to initialize an Oculus object with a boolean value.** If is set to ```true```, it will stop drawing after a few seconds when using the draw() method, by reducing the size of the ellipses. If is set to ```false```, it won't stop drawing when using the draw() method. On other methods, the result is different.


**You can create and animate the shapes just by calling one of the following methods:**

# eye()
* Draws default eye statically. Run this only in setup()

# draw()
* Draws default eye

# draw(x, y, size, frec1, frec2, speed, density, thickness)
* Draws a wide variety of shapes depending on the parameters
  - float x: x-coordinate of the shape
  - float y: y-coordinate of the shape
  - float size: size of the shape
  - float frec1: x-coordinate for sin()
  - float frec2: y-coordinate for cos()
  - float speed: speed of counter used by the Oculus for sin() and cos()
  - int density: density of ellipses drawn
  - float thickness: thickness of ellipses drawn

# circle()
* Draws default circle if the Oculus is initialized on false

# eye2()
* A variant of the default eye

# eye2(xPos, yPos, size, amplitude)
* Draws an eye-like shape and changes depending on the parameters
  - float xPos: x-coordinate of the shape
  - float yPos: y-coordinate of the shape
  - float size: size of the shape
  - int amplitude: value that multiplies the cos() function


# circle(xPos, yPos, size, frec1, frec2, speed, density, thickness)
* Draws a circle-like shape and changes depending on the parameters
  - float xPos: x-coordinate of the shape
  - float yPos: y-coordinate of the shape
  - float size: size of the shape
  - float frec1: x-coordinate for sin()
  - float frec2: y-coordinate for cos()
  - float thickness: thickness of ellipses drawn
  - int amplitude: value that multiplies the cos() function

------------------------------------------------------------------------------

 # Examples:

 ```java
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
  figure= new Oculus(true);
}

void draw() {
  //figura.eye2(x,y,cc*10,cc*0.05);
  c+=0.1;
}
```

 ```java
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
  figura= new Oculus(false);

}

void draw() {
  background(0); 
  figura.circle(x,y, (sin(cc*0.05)*300)+200, 0.06, sin(cc*0.1)*0.5, 0.01, 0.1);
  cc+=0.1;
}
```


**Ale Cominotti - 2020**