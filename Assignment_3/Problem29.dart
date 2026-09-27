class Book {
  String title;
  String author;
  bool _isIssued = false;

  Book(this.title, this.author);

  bool get isIssued => _isIssued;

  void issueBook() {
    if (!_isIssued) {
      _isIssued = true;
      print("$title has been issued.");
    } else {
      print("$title is already issued.");
    }
  }

  void returnBook() {
    if (_isIssued) {
      _isIssued = false;
      print("$title has been returned.");
    } else {
      print("$title was not issued.");
    }
  }
}

class Member {
  String name;
  int id;

  Member(this.name, this.id);

  void displayMember() {
    print("Member Name: $name");
    print("Member ID: $id");
  }
}

class StudentMember extends Member {
  String department;

  StudentMember(String name, int id, this.department)
      : super(name, id);

  void displayStudentMember() {
    displayMember();
    print("Department: $department");
  }
}

class Library {
  List<Book> books = [];
  List<Member> members = [];

  void addBook(Book book) {
    books.add(book);
    print("${book.title} added to library.");
  }

  void addMember(Member member) {
    members.add(member);
    print("${member.name} added as a member.");
  }

  void issueBook(Book book) {
    book.issueBook();
  }

  void returnBook(Book book) {
    book.returnBook();
  }
}

void main() {
  Library library = Library();

  Book book = Book("Dart Programming", "John Smith");

  StudentMember member =
      StudentMember("Humayra", 101, "CSE");

  library.addBook(book);
  library.addMember(member);

  print("");

  member.displayStudentMember();

  print("");

  library.issueBook(book);

  print("");

  library.returnBook(book);
}