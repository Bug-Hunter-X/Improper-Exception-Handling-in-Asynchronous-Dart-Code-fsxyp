```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success, parse the JSON response
      final jsonData = jsonDecode(response.body);
      // Process jsonData here
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle any other exceptions
    print('Error fetching data: $e');
    // In real-world apps, consider more sophisticated error handling 
    // such as showing an error message to the user, logging the error,
    // or retrying the request after a delay.
  }
}
```