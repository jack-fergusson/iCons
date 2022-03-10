import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:vertical_card_pager/vertical_card_pager.dart';



import 'main.dart';

class screenhome extends StatefulWidget {
  const screenhome({Key? key}) : super(key: key);

  @override
  _screenhomeState createState() => _screenhomeState();
}

class _screenhomeState extends State<screenhome> {

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      "",
      "YELLOW",
      "green",
      "CYAN",
    ];
    final List<Widget> images = [
      Container(
          padding: const EdgeInsets.all(11),
          child: Image(image: AssetImage('assets/logo.png'),height: 100, width: 100,)),
      Container(
        color: Color.fromRGBO(3, 37, 78, 1),

      ),
      Container(
        color: Color.fromRGBO(3, 37, 78, 1),
      ),
      Container(
        color: Color.fromRGBO(3, 37, 78, 1),
      ),

    ];

    return Scaffold(

      appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Color.fromRGBO(3, 37, 78, 1),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {Navigator.pop(context);},
                child: Icon(
                  Icons.account_circle_sharp,
                  size: 26.0,
                ),
              )
          ),

        ],
      ),

      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 37, 78, 1),
              ),
              child: Text('Menu', style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),),
            ),
            ListTile(
              title: const Text('About Us'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Contact Us'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),


              body: Container(
                child: VerticalCardPager(
                  textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  titles: titles,
                  images: images,
                  onPageChanged: (page) {
                  },
                  onSelectedItem: (index) {
                  },
                ),
              )









    );
  }
}
