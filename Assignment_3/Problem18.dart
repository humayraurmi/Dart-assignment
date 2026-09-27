class Flyable {
  void fly() {
    print("Flying...");
  }
}

class Swimmable {
  void swim() {
    print("Swimming...");
  }
}

class Duck implements Flyable, Swimmable {
  @override
  void fly() {
    print("Duck can fly.");
  }

  @override
  void swim() {
    print("Duck can swim.");
  }
}

void main() {
  Duck duck = Duck();

  duck.fly();
  duck.swim();
}