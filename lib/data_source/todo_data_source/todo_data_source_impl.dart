import 'dart:convert';
import 'dart:io';

import 'package:modu_3_dart_study/data_source/todo_data_source/todo_data_source.dart';
import 'package:modu_3_dart_study/model/todo.dart';

class TodoDataSourceImpl implements TodoDataSource {
  final String _filePath = "todo_data.json";

  @override
  Future<List<Todo>> getTodos() async {
    final file = File(_filePath);
    final jsonString = await file.readAsString();
    final List<Map<String, dynamic>> jsonData = jsonDecode(jsonString);
    return jsonData.map((e) => Todo.fromJson(e)).toList();
  }
}
