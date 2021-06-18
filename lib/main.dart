import 'package:flutter/material.dart';
import 'package:vignneshravindran/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vignnesh Ravindran',
      // theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}

