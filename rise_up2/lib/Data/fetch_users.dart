import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rise_up2/models/users.dart'; 

class FetchDataUsers {
  static Future<List<Users>> fetchUsers () async {
    Iterable iterable;
    List<Users> users;

    const url = 'http://10.0.2.2:7014/api/Users';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    iterable = json.decode(response.body);
    users = List<Users>.from(iterable.map((e) => Users.fromJson(e)));
    return users;
    
}
}