# oculus :black_circle:

![Oculus](https://raw.githubusercontent.com/alecominotti/oculus/master/eye.gif)

## Oculus v0.1

The Oculus is a class that lets you create and animate some weird shapes.
It draws thousands of ellipses on the screen with the help of the popular sin() and cos() functions.

**You need to initialize an Oculus object with a boolean value.** 
If is set to ```true```, it will stop drawing after a few seconds (when using the draw() method), by reducing the size of its ellipses.
If is set to ```false```, it won't stop drawing.
On other methods, the result may be different.



**You can create and animate the shapes just by calling one of the following methods:**


## eye()
* Draws default eye statically. Run this only in setup()


## draw()
* Draws default animated eye (as shown above).


## draw(x, y, size, frec1, frec2, speed, density, thickness)
* Draws a wide variety of shapes depending on the parameters
  - float x: x-coordinate of the shape
  - float y: y-coordinate of the shape
  - float size: size of the shape
  - float frec1: x-coordinate for sin()
  - float frec2: y-coordinate for cos()
  - float speed: speed of counter used by the Oculus for sin() and cos()
  - int density: density of ellipses drawn
  - float thickness: thickness of ellipses drawn


## circle()
* Draws default circle if the Oculus is initialized on ```false```


## eye2()
* A variant of the default eye. Run it with the Oculus initialized on ```false```.


## eye2(xPos, yPos, size, amplitude)
* Draws an eye-like shape and changes depending on the parameters
  - float xPos: x-coordinate of the shape
  - float yPos: y-coordinate of the shape
  - float size: size of the shape
  - int amplitude: value that multiplies the cos() function



## circle(xPos, yPos, size, frec1, frec2, speed, density, thickness)
* Draws a circle-like shape and changes depending on the parameters
  - float xPos: x-coordinate of the shape
  - float yPos: y-coordinate of the shape
  - float size: size of the shape
  - float frec1: x-coordinate for sin()
  - float frec2: y-coordinate for cos()
  - float thickness: thickness of ellipses drawn
  - int amplitude: value that multiplies the cos() function

## stars(cant)
* Draws ```cant``` stars in the background
  - int cant: ammount of stars in the background

------------------------------------------------------------------------------

# Note:
  - Try not only different (and variable!) values for the parameters, but also different combinations by using (or not) functions like background() and initalizing the Oculus on ```true``` or ```false```

------------------------------------------------------------------------------

# Examples:
#### Copy and paste, I swear it works. Maybe.

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
  figure.stars(700);
}

void draw() {
  figure.eye2(x, y, cc*10, cc*0.05);
  cc+=0.1;
}

```
------------------------------------------------------------------------------
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
  figure= new Oculus(false);
}

void draw() {
  background(0); 
  figure.circle(x,y, (sin(cc*0.05)*300)+200, 0.06, sin(cc*0.1)*0.2, 0.01, 0.1);
  cc+=0.1;
}
```
------------------------------------------------------------------------------
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
  figure.stars(700);
}

void draw() { 
  figure.eye2();
  cc+=0.1;
}
```

------------------------------------------------------------------------------
**Ale Cominotti - 2020**
------------------------------------------------------------------------------