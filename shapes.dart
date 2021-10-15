import 'dart:io';

import 'dart:math';

class Filled {
  void defineMe() {
    print('I am a filled shape');
  }
}

class filledCircle extends Circle with Filled {
  num Radius = 1;
  filledCircle(num theradius) : super(theradius) {}
  @override
  void defineMe() {
    // TODO: implement defineMe
    super.defineMe();
  }
}

class Shape {
  num calculateArea() {
    return 1;
  }
}

class Circle extends Shape {
  num radius = 1;
  Circle(num theradius) {
    this.radius = theradius;
  }
  @override
  double calculateArea() {
    return radius * radius * pi;
    // TODO: implement calculateArea
  }
}

class Rectangle extends Shape {
  double width, height;
  Rectangle(this.height, this.width);
  @override
  double calculateArea() {
    return width * height;
  }
}

void main() {
  var rectangle = new Rectangle(6, 8);
  var circle = new Circle(5);
  var circleArea = circle.calculateArea();
  var rectArea = rectangle.calculateArea();
  print('$circleArea  $rectArea');
  var coloredcircle = filledCircle(6);
  var colorArea = coloredcircle.calculateArea();
  print(colorArea);
  coloredcircle.defineMe();
}
