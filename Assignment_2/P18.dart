void main() {
  Map<String, dynamic> person = {
    "name": "Humayra",
    "address": "Sylhet",
    "age": 21,
    "country": "Bangladesh"
  };

  person["country"] = "France";


  person.forEach((key, value) {
    print("$key: $value");
  });
}