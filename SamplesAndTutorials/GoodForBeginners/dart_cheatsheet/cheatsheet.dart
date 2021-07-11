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
