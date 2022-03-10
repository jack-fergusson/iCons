import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:icons_app/main.dart';

import 'main.dart';
import 'screencart.dart';
import 'screenhome.dart';
import 'screensearch.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  int currentIndex = 0;
  final screens = [
      screenhome(),
      screensearch(),
      screencart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(

            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromRGBO(3, 37, 78, 1),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
            backgroundColor: Color.fromRGBO(129, 17, 18, 1),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
            backgroundColor: Color.fromRGBO(30, 86, 49, 1),

          ),

        ],


        selectedItemColor: Colors.white,

      ),
    );
  }

}








