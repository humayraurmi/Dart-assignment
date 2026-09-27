class Guest {
  String name;
  String phone;

  Guest(this.name, this.phone);

  void displayGuest() {
    print("Guest Name: $name");
    print("Phone: $phone");
  }
}

class Room {
  int roomNumber;
  String type;
  double price;

  Room(this.roomNumber, this.type, this.price);

  void displayRoom() {
    print("Room Number: $roomNumber");
    print("Room Type: $type");
    print("Room Price: $price");
  }
}

class Reservation {
  Guest guest;
  Room room;
  int nights;

  Reservation(this.guest, this.room, this.nights);

  double calculateTotal() {
    return room.price * nights;
  }

  void displayReservation() {
    guest.displayGuest();
    room.displayRoom();
    print("Number of Nights: $nights");
    print("Total Cost: ${calculateTotal()}");
  }
}

void main() {
  Guest guest = Guest("Humayra", "01700000000");

  Room room = Room(101, "Deluxe", 3000);

  Reservation reservation = Reservation(guest, room, 3);

  reservation.displayReservation();
}