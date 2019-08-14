import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset(
            "assets/images/tokyo.jpg",
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.hue,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
