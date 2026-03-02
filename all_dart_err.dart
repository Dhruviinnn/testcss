// =======================
// ALL TYPES OF DART ERRORS
// =======================

import 'dart:math';

class Person {
  String name;

  Person(this.name);

  void greet() {
    print("Hello $name");
  }
}

class Student extends Person {

  Student(String name) : super(name);

  // ❌ Invalid override (wrong return type)
  @override
  int greet() {   // Should be void
    return 5;
  }
}

int missingReturnFunction() {
  int x = 5;
  // ❌ Missing return
}

void main() async {

  // ❌ Type mismatch
  int number = "hello";

  // ❌ Null safety violation
  String nonNullable = null;

  // ❌ Undefined variable
  print(undefinedVar);

  // ❌ Unused variable
  int unusedVar = 10;

  // ❌ Invalid assignment
  double price = 10;
  price = "free";

  // ❌ Const error
  const int constValue;
  
  // ❌ List type mismatch
  List<int> numbers = [1, 2, "three"];

  // ❌ Map type mismatch
  Map<String, int> scores = {
    "math": 90,
    "english": "high"
  };

  // ❌ Async misuse
  Future<int> futureValue = Future.value(5);
  int value = futureValue;   // Missing await

  // ❌ Wrong constructor usage
  Person p = Person();

  // ❌ Dead code
  return;
  print("This will never run");

  // ❌ Syntax error (unclosed bracket)
  if (number > 5 {
    print("Broken syntax");
}