import 'dart:convert';
import 'dart:io';

import 'package:modu_3_dart_study/data_source/photo_data_source/photo_data_source.dart';
import 'package:modu_3_dart_study/model/Photo.dart';

class PhotoDataSourceImpl implements PhotoDataSource {
  final String _filePath = "photo_data.json";
  @override
  Future<List<Photo>> getPhotos() async {
    final file = File(_filePath);
    final jsonString = await file.readAsString();
    final List<Map<String, dynamic>> jsonData = jsonDecode(jsonString);
    return jsonData.map((e) => Photo.fromJson(e)).toList();
  }
}
