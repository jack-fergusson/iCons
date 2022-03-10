import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'dart:ui';

class screencart extends StatefulWidget {
  const screencart({Key? key}) : super(key: key);

  @override
  _screencartstate createState() => _screencartstate();
}

class _screencartstate extends State<screencart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child:Text("Welcome to cart")
      ),


    );
  }
}