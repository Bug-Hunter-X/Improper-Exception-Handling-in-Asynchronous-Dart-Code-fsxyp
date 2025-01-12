# Improper Exception Handling in Asynchronous Dart Code

This repository demonstrates a common error in Dart: insufficient exception handling within asynchronous functions.  The example shows a `fetchData` function that makes a network request.  While it includes a `try-catch` block, the error handling is minimal.  This can lead to unexpected application behavior and poor user experience.

The `bug.dart` file showcases the flawed code.  The `bugSolution.dart` file provides an improved version with more robust error handling, including user-friendly error messages and more informative logging.