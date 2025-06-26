// a) Abstract class Vehicle
abstract class Vehicle {
  // Encapsulated protected variable (using underscore to make it private in Dart)
  int _speed = 0;

  // Abstract method
  void move();

  // Non-abstract method to set speed
  void setSpeed(int speed) {
    _speed = speed;
  }

  // Getter for speed to allow subclass access without direct field access
  int get speed => _speed;
}

// b) Subclass Car that extends Vehicle
class Car extends Vehicle {
  @override
  void move() {
    print("The car is moving at $speed km/h");
  }
}

// d) Main function
void main() {
  Car myCar = Car();
  myCar.setSpeed(80);
  myCar.move();
}
