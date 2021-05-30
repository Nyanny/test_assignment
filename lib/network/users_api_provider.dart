import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:test_assignment/models/user_model.dart';

const String stringApiUri = 'https://jsonplaceholder.typicode.com/users';
Uri apiUri = Uri.parse(stringApiUri);

class UsersProvider {
  Future<List<User>> getUsers() async {
    final response = await http.get(apiUri);

    if (response.statusCode == 200) {
      final List<dynamic> jsonUser = json.decode(response.body);
      return jsonUser.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
