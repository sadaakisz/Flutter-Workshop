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

    // Getters and setters: https://dart.dev/codelabs/dart-cheatsheet#getters-and-setters
    // Example: https://dart.dev/codelabs/dart-cheatsheet#code-example-7

// TODO: Error: Tried setting a negative price and received a _Type instead of an InvalidPriceException.
class InvalidPriceException {}

class ShoppingCart {
  List<double> _prices = [];

  double get total {
    double pricesSum=0;
    _prices.forEach((number)=>(pricesSum+=number));
    return pricesSum;
  }

  set prices(List<double> values) {
    _prices.clear();
    values.forEach((number)=>{
      if (number.isNegative) {
        throw InvalidPriceException
      }
      else _prices.add(number)
    });
  }
}

    // Optional positional parameters: https://dart.dev/codelabs/dart-cheatsheet#optional-positional-parameters
    // Example: https://dart.dev/codelabs/dart-cheatsheet#code-example-8

String joinWithCommas(int a, [int? b, int? c, int? d, int? e]) {
  List<String> joined = [];
  joined.add(a.toString());
  if (b!=null) joined.add(b.toString());
  if (c!=null) joined.add(c.toString());
  if (d!=null) joined.add(d.toString());
  if (e!=null) joined.add(e.toString());
  return joined.join(',');
}

    // Optional named parameters: https://dart.dev/codelabs/dart-cheatsheet#optional-named-parameters
    // Example: https://dart.dev/codelabs/dart-cheatsheet#code-example-9

class MyDataObject {
  final int anInt;
  final String aString;
  final double aDouble;

  MyDataObject({
    this.anInt = 1,
    this.aString = 'Old!',
    this.aDouble = 2.0,
  });

  MyDataObject copyWith({int newInt = 1, String newString='Old!' ,double newDouble = 2.0}){
    return MyDataObject(anInt: newInt, aString: newString, aDouble: newDouble);
  }
}

    // Exceptions: https://dart.dev/codelabs/dart-cheatsheet#exceptions
    // Example: https://dart.dev/codelabs/dart-cheatsheet#code-example-10

typedef VoidFunction = void Function();

class ExceptionWithMessage {
  final String message;
  const ExceptionWithMessage(this.message);
}

// Call logException to log an exception, and doneLogging when finished.
abstract class Logger {
  void logException(Type t, [String? msg]);
  void doneLogging();
}

void tryFunction(VoidFunction untrustworthy, Logger logger) {
  // Invoking this method might cause an exception. Catch and handle
  // them using try-on-catch-finally.
  try {
    untrustworthy();
  } on ExceptionWithMessage catch(e){
    logger.logException(e.runtimeType, e.message);
  } on Exception {
    logger.logException(Exception);
  } catch(e) {
    rethrow;
  } finally {
    logger.doneLogging();
  }

}

