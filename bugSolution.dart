```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access the data
      print(jsonData['someData']);
    } else {
      // Handle the error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on FormatException catch (e) {
    print('JSON format error: $e');
  } catch (e) {
    print('An error occurred: $e');
    //Consider more sophisticated error handling here, such as logging or displaying a user-friendly message
  }
}
```