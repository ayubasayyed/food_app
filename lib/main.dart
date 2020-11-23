import 'package:flutter/material.dart';
import 'package:food_app/src/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      theme: ThemeData(
        primarySwatch: Colors.red,

      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
