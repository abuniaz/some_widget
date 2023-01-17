import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:multiple_widget/api_calling.dart';

import 'package:multiple_widget/slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BasicApi(),
    );
  }
}
