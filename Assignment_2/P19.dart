void main() {
  Map<String, String> contacts = {
    "John": "01711111111",
    "Alex": "01822222222",
    "Sara": "01933333333",
    "David": "01644444444",
    "Mike": "01555555555"
  };

  var result = contacts.keys.where(
    (key) => key.length == 4
  );

  print("Keys with length 4:");

  for (String key in result) {
    print(key);
  }
}