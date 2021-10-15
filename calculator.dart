import 'dart:io';

double add(double x, double y) {
  return x + y;
}

double substract(double x, double y) {
  return x - y;
}

double divide(double x, double y) {
  if (y == 0) return -1;
  return x / y;
}

double multiply(double x, double y) {
  return x * y;
}

void main(List<String> arguments) {
  var firstNumber;
  var secondNumber;
  double result = 0;
  String operation;
  print("Enter the first number\n");
  firstNumber = double.parse(stdin.readLineSync());
  print("Enter the operation you want to perform\n + or - or / or x");
  operation = stdin.readLineSync();
  print("Enter the second number\n");
  secondNumber = double.parse(stdin.readLineSync());
  switch (operation) {
    case '+':
      result = add(firstNumber, secondNumber);
      break;
    case '-':
      result = substract(firstNumber, secondNumber);
      break;
    case '/':
      result = divide(firstNumber, secondNumber);
      break;
    case 'x':
      result = multiply(firstNumber, secondNumber);
      break;
  }
  print('$firstNumber  $operation $secondNumber = $result');
}
