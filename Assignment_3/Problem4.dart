class Car {
  Car.manual() {
    print("This is a manual car.");
  }

  Car.automatic() {
    print("This is an automatic car.");
  }
}

void main() {
  Car car1 = Car.manual();
  Car car2 = Car.automatic();
}