# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in Dart: unhandled exceptions within asynchronous operations.  The `fetchData` function makes a network request. If the request fails or the JSON parsing encounters an issue, an exception is thrown.  However, without proper exception handling, the application might crash.

The solution shows how to use `try-catch` blocks and the `rethrow` keyword to gracefully handle and propagate exceptions for better error management and program stability.