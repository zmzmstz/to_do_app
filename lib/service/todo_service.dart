import 'dart:convert';

import 'package:to_do_app/models/todo.dart';
import 'package:http/http.dart' as http;

class TodoService {
  final String url = "https://dummyjson.com/todos/";

  Future<List<Todo>> getTodos() async {
    final response = await http.get(Uri.parse(url));

    List<dynamic> resp = jsonDecode(response.body)["todos"];
    List<Todo> todos = List.empty(growable: true);

    resp.forEach((element) {
      todos.add(Todo.fromJson(element));
    });

    return todos;
  }
}
