// To parse this JSON data, do
//
//     final allCategory = allCategoryFromJson(jsonString);

import 'dart:convert';

List<String> allCategoryFromJson(String str) =>
    List<String>.from(json.decode(str).map((x) => x));

String allCategoryToJson(List<String> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x)));
