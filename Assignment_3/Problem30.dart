abstract class Person {
  String name;
  int id;

  Person(this.name, this.id);

  void displayInfo();
}

class Student extends Person {
  String department;
  double _cgpa;

  Student(
    String name,
    int id,
    this.department,
    double cgpa,
  ) : _cgpa = cgpa,
       super(name, id);

  double get cgpa {
    return _cgpa;
  }

  set cgpa(double value) {
    if (value >= 0 && value <= 4) {
      _cgpa = value;
    } else {
      print("Invalid CGPA.");
    }
  }

  @override
  void displayInfo() {
    print("Student Name: $name");
    print("Student ID: $id");
    print("Department: $department");
    print("CGPA: $_cgpa");
  }
}

class Course {
  String courseCode;
  String courseName;
  double credit;

  Course(this.courseCode, this.courseName, this.credit);

  void displayCourse() {
    print("Course Code: $courseCode");
    print("Course Name: $courseName");
    print("Credit: $credit");
  }
}

class Enrollment {
  Student student;
  Course course;
  String semester;

  Enrollment(
    this.student,
    this.course,
    this.semester,
  );

  void displayEnrollment() {
    print("Student: ${student.name}");
    print("Course: ${course.courseName}");
    print("Semester: $semester");
  }
}

void main() {
  Student student = Student(
    "Humayra",
    101,
    "CSE",
    3.99,
  );

  Course course = Course(
    "CSE-301",
    "Object Oriented Programming",
    3.0,
  );

  Enrollment enrollment = Enrollment(
    student,
    course,
    "Fall 2026",
  );

  print("----- Student Information -----");
  student.displayInfo();

  print("");

  print("----- Course Information -----");
  course.displayCourse();

  print("");

  print("----- Enrollment Information -----");
  enrollment.displayEnrollment();

  print("");

  student.cgpa = 4.00;

  print("Updated CGPA: ${student.cgpa}");
}