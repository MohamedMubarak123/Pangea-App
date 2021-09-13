import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthProvider with ChangeNotifier {
  Future<bool> login(
      BuildContext context, String email, dynamic password) async {
    final url = Uri.parse("");
    Map<String, String> body = {
      'email': email,
      'password': password,
    };
    final response = await http.post(
      url,
      body: body,
    );
    //print server response
    debugPrint("response" + response.body);

    if (response.statusCode == 200) {
      return true;
    }

    if (response.statusCode == 401) {
      Navigator.pop(context);
      //toast message dialog function
      return false;
    }
    Navigator.pop(context);
    //toast message dialog function
    return false;
  }
}
