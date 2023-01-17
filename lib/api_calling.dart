import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BasicApi extends StatefulWidget {
  const BasicApi({super.key});

  @override
  State<BasicApi> createState() => _BasicApiState();
}

class _BasicApiState extends State<BasicApi> {
  List<Photos> photosList = [];
  Future<List<Photos>> getPhotos() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map i in data) {
        Photos photos = Photos(title: i['title'], url: i['title']);
        photosList.add(photos);
      }
      return photosList;
    } else {
      return photosList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Calling'),
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}

class Photos {
  String title, url;
  Photos({required this.title, required this.url});
}
