mixin LoggerMixin {
  void logMessage(String message) {
    print("LOG: $message");
  }
}

class User with LoggerMixin {
  String name;

  User(this.name);

  void showUser() {
    print("User: $name");
    logMessage("User information displayed.");
  }
}

class Product with LoggerMixin {
  String name;

  Product(this.name);

  void showProduct() {
    print("Product: $name");
    logMessage("Product information displayed.");
  }
}

void main() {
  User user = User("Rahim");
  Product product = Product("Laptop");

  user.showUser();
  product.showProduct();
}