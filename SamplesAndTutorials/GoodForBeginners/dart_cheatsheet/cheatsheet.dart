// Contains all exercises from: https://dart.dev/codelabs/dart-cheatsheet

    // String interpolation: https://dart.dev/codelabs/dart-cheatsheet#string-interpolation
    // Example: https://dart.dev/codelabs/dart-cheatsheet#code-example
String stringify(int x, int y) {
  return '${x} ${y}';
}

    // Nullable variables: https://dart.dev/codelabs/dart-cheatsheet#nullable-variables
    // Example: https://dart.dev/codelabs/dart-cheatsheet#code-example-1

String? name = 'Jane';
String? address;

    // Null-aware operators: https://dart.dev/codelabs/dart-cheatsheet#null-aware-operators
    // Example: https://dart.dev/codelabs/dart-cheatsheet#code-example-2

String? foo = 'a string';
String? bar; // = null

// Substitute an operator that makes 'a string' be assigned to baz.
String? baz = foo ?? bar;

void updateSomeVars() {
  // Substitute an operator that makes 'a string' be assigned to bar.
  bar ??= 'a string';
}

    // Conditional property access: https://dart.dev/codelabs/dart-cheatsheet#conditional-property-access
    // Example: https://dart.dev/codelabs/dart-cheatsheet#code-example-3

// This method should return the uppercase version of `str`
// or null if `str` is null.
String? upperCaseIt(String? str) {
  // Try conditionally accessing the `toUpperCase` method here.
  return str?.toUpperCase();
}

    // Collection literals: https://dart.dev/codelabs/dart-cheatsheet#collection-literals
    // Example: https://dart.dev/codelabs/dart-cheatsheet#code-example-4

// Assign this a list containing 'a', 'b', and 'c' in that order:
final aListOfStrings = ['a', 'b', 'c'];

// Assign this a set containing 3, 4, and 5:
final aSetOfInts = {3, 4, 5};

// Assign this a map of String to int so that aMapOfStringsToInts['myKey'] returns 12:
final aMapOfStringsToInts = {'myKey': 12};

// Assign this an empty List<double>:
final anEmptyListOfDouble = <double>[];

// Assign this an empty Set<String>:
final anEmptySetOfString = <String>{};

// Assign this an empty Map of double to int:
final anEmptyMapOfDoublesToInts = <double, int>{};

    // Arrow syntax: https://dart.dev/codelabs/dart-cheatsheet#arrow-syntax
    // Example: https://dart.dev/codelabs/dart-cheatsheet#code-example-5

class MyClass {
  int value1 = 2;
  int value2 = 3;
  int value3 = 5;

  // Returns the product of the above values:
  int get product => (value1*value2*value3);

  // Adds 1 to value1:
  void incrementValue1() => (value1+=1);

  // Returns a string containing each item in the
  // list, separated by commas (e.g. 'a,b,c'):
  String joinWithCommas(List<String> strings) => strings.join(',');
}

    // Cascades: https://dart.dev/codelabs/dart-cheatsheet#cascades
    // Example: https://dart.dev/codelabs/dart-cheatsheet#code-example-6

class BigObject {
  int anInt = 0;
  String aString = '';
  List<double> aList = [];
  bool _done = false;

  void allDone() {
    _done = true;
  }
}

BigObject fillBigObject(BigObject obj) {
  return obj
    ..anInt=1
    ..aString='String!'
    ..aList.add(3.0)
    ..allDone();
}
