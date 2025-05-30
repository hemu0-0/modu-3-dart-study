import 'dart:convert';
import 'dart:io';

import 'package:modu_3_dart_study/model/25-04-01/comment.dart';

import 'comment_data_source.dart';

class CommentDataSourceImpl implements CommentDataSource {
  final String _filePath = "comment_data.json";
  @override
  Future<List<Comment>> getComments() async {
    final file = File(_filePath);
    final jsonString = await file.readAsString();
    final List<Map<String, dynamic>> jsonData = jsonDecode(jsonString);
    return jsonData.map((e) => Comment.fromJson(e)).toList();
  }
}
