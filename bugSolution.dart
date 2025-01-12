```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData 
    } else {
      //Informative error message.
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Log the error for debugging purposes
    print('Error fetching data: $e');
    // Provide user-friendly feedback
    // Consider a more sophisticated error reporting system in production.
    print('An error occurred while fetching data. Please try again later.');
  }
}
```