import 'dart:convert';
import 'package:http/http.dart' as http;

class Api {
  // Jab tum server banao, URL yahan daal dena
  static const base = 'https://your-server-url.com';

  static Future<Map<String, dynamic>?> predict(Map<String, dynamic> data) async {
    try {
      final res = await http.post(
        Uri.parse(base + '/predict'),
        body: jsonEncode(data),
        headers: {'Content-Type': 'application/json'},
      );

      if (res.statusCode == 200) {
        return Map<String, dynamic>.from(jsonDecode(res.body));
      }
      return null;
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }
}
