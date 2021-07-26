// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class User {
//   String nama;
//   String date;
//   String jenisKelamin;
// }

// class ListItem {
//   String type;

//   ListItem({this.type});

//   factory ListItem.createListItem(Map<String, dynamic> object) {
//     return ListItem(type: object['type']);
//   }

//   static Future<ListItem> connectToAPI(String type) async {
//     var apiResult = await http.get(
//       Uri.parse('https://wsjti.id/behealthy/public/api/list-olahraga'),
//     );
//     var jsonObject = json.decode(apiResult.body);

//     return ListItem.createListItem(jsonObject);
//   }
// }
