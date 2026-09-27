void main() {
  List<String> friends = [
    "Ayesha",
    "Rahim",
    "Anika",
    "Karim",
    "Sadia",
    "Arif",
    "Nusrat"
  ];

  var result = friends.where(
    (name) => name.toLowerCase().startsWith("a")
  );

  print("Names starting with A:");

  for (String name in result) {
    print(name);
  }
}