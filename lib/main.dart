import 'package:flutter/material.dart';
import 'package:flutter_responsible_ui/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Responsible UI',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}